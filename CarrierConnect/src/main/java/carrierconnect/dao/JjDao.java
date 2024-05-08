package carrierconnect.dao;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import carrierconnect.dto.ApplyJob;
import carrierconnect.dto.GenerateRequirement;
import carrierconnect.dto.JobSeeker;
import carrierconnect.dto.Recruiter;
import carrierconnect.dto.User;



public class JjDao {
	
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("career") ;
	EntityManager entityManager = entityManagerFactory.createEntityManager() ;
	EntityTransaction entityTransaction = entityManager.getTransaction() ;
	
	public void signupUser(User user) { 
		
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();
	}
	
	public User emailLogin(String email) {
		
		Query query = entityManager.createQuery("select u from User u where u.email=?1") ;
		query.setParameter(1, email) ;
		try {
			return (User) query.getSingleResult() ;
		}
		catch (Exception e) {
			
			return null ;
		}
	} 
	
	public User phoneLogin(long phone) {
		
		Query query = entityManager.createQuery("select u from User u where u.phone=?1") ;
		query.setParameter(1, phone) ;
		
		try {
			return (User) query.getSingleResult() ;
		}
		catch (Exception e) {
			
			return null ; 
		}
	} 
	
	public void insertRecuriter(Recruiter recruiter) { 
		
		entityTransaction.begin();
		entityManager.persist(recruiter);
		entityTransaction.commit();
	}
	
	public void jobSeekerInsert(JobSeeker jobSeeker) {
		entityTransaction.begin();
	
		entityManager.persist(jobSeeker);
		entityTransaction.commit();
	}
	public void createRequirement(GenerateRequirement generateRequirement) { 
		
		entityTransaction.begin();
		entityManager.persist(generateRequirement); 
		entityTransaction.commit();
	}
	
	public Recruiter recSession(User user)
	{
		
		
		Query query = entityManager.createQuery("select u from Recruiter u") ;
		List<Recruiter> list=query.getResultList();
		for(Recruiter r:list)
		{
			User u=r.getUser();
			if(u.getEmail().equals(user.getEmail()))
			{
				return r;
			}
			else if(u.getPhone()==user.getPhone())
			{
				return r;
			}
			
		}
		return null;
		
	
	}
	
	
	public Recruiter findRecruiter(int id)
	{
		Query query = entityManager.createQuery("select u from Recruiter u where u.rId=?1") ;
		query.setParameter(1, id) ;
		return (Recruiter) query.getSingleResult();
		
		
	}
	
	
	
	public ApplyJob findApplyJob(int id)
	{
		Query query = entityManager.createQuery("select u from ApplyJob u where u.id=?1") ;
		query.setParameter(1, id) ;
		return (ApplyJob) query.getSingleResult();
		
		
	}
	
	
	
	
	public void removeApplyJob(int id)
	{
		ApplyJob job=findApplyJob(id);
		job.setRequirement(null);
		
		
		if(job!=null)
		{
		entityTransaction.begin();
		entityManager.remove(job); 
		entityTransaction.commit();
		}
	}
	
	
	public GenerateRequirement findRequirement(int id)
	{
		Query query = entityManager.createQuery("select u from GenerateRequirement u where u.jobId=?1") ;
		query.setParameter(1, id) ;
		return (GenerateRequirement) query.getSingleResult();
		
		
	}
	
	public GenerateRequirement findRequirementById(int id)
	{
		Query query = entityManager.createQuery("select u from GenerateRequirement u where u.id=?1") ;
		query.setParameter(1, id) ;
		return (GenerateRequirement) query.getSingleResult();
		
		
	}
	
	
	public JobSeeker recSession2(User user)
	{
		
		
		Query query = entityManager.createQuery("select js from JobSeeker js") ;
		List<JobSeeker> list=query.getResultList();
		for(JobSeeker seeker:list)
		{
			User u=seeker.getUser();
			if(u!=null) {
			
			if(u.getEmail().equals(user.getEmail()))
			{
				return seeker;
			}
			else if(u.getPhone()==(user.getPhone()))
			{
				return seeker;
			}
			}
		}
		return null;
		
	}
	public void saveApplyJob(ApplyJob job)
	{
		entityTransaction.begin();
		entityManager.persist(job);
		entityTransaction.commit();
	}
	
	public User findUser(int id)
	{
		Query query = entityManager.createQuery("select u from User u where u.id=?1") ;
		query.setParameter(1, id) ;
		return (User) query.getSingleResult();
		
	}
	
	public JobSeeker updateSessionSeeker(JobSeeker seeker)
	{
		entityTransaction.begin();
		entityManager.merge(seeker);
		entityTransaction.commit();
		return seeker;
	}
	
	public GenerateRequirement updateSessionRequirement(GenerateRequirement reqirement)
	{
		entityTransaction.begin();
		entityManager.merge(reqirement);
		entityTransaction.commit();
		return reqirement;
	}
	
	public List<GenerateRequirement> requirmentList( Recruiter recruiter)
	{

		Query query = entityManager.createQuery("select js from GenerateRequirement js where js.companyName=?1") ;
		query.setParameter(1, recruiter.getCompanyName()) ;
		List<GenerateRequirement> list=query.getResultList();
		return list;
	}
	public List<GenerateRequirement> requirmentListAll()
	{

		Query query = entityManager.createQuery("select js from GenerateRequirement js") ;
		List<GenerateRequirement> list=query.getResultList();
		return list;
	}
	
	
	public User updateUser(int id,User user)
	{
		User user1=entityManager.find(User.class, id);
		
		if(user1!=null) {
		user.setId(id);
		user.setPassword(user1.getPassword());
		user.setType(user1.getType());			
		user.setGender(user1.getGender());
		
		entityTransaction.begin();
		entityManager.merge(user);
		entityTransaction.commit();
		return user;
	}
		return null;
	}
	
	
	
	public Recruiter updateRecruiter(int id,Recruiter recruiter)
	{
		Recruiter recruiter1=entityManager.find(Recruiter.class, id);
		
		if(recruiter1!=null) {
			recruiter.setRId(id);
			recruiter.setUser(recruiter1.getUser());
			recruiter.setGenerateRequirements(recruiter1.getGenerateRequirements());;
				
		
		
		entityTransaction.begin();
		entityManager.merge(recruiter);
		entityTransaction.commit();
		return recruiter;
	}
		return null;
	}
	
	public GenerateRequirement updateGenateRequirement(int id,GenerateRequirement requirement)
	{
		GenerateRequirement requirement1=entityManager.find(GenerateRequirement.class, id);
		
		if(requirement1!=null) {
			requirement.setId(id);;
			requirement.setJobSeekers(requirement1.getJobSeekers());
		
		
		entityTransaction.begin();
		entityManager.merge(requirement);
		entityTransaction.commit();
		return requirement;
	}
		return null;
	}
	
	public JobSeeker updateJobSeeker(int id,JobSeeker seeker)
	{
		JobSeeker seeker1=entityManager.find(JobSeeker.class, id);
		
		if(seeker1!=null) {
			seeker.setJId(id);
			seeker.setDob(seeker1.getDob());
			seeker.setUser(seeker1.getUser());
			seeker.setApply(seeker1.getApply());
		
		
		entityTransaction.begin();
		entityManager.merge(seeker);
		entityTransaction.commit();
		return seeker;  
	}
		return null;
	}
	
	public List<GenerateRequirement> findSkills()
	{
		Query query = entityManager.createQuery("select gr from GenerateRequirement gr") ;
		List<GenerateRequirement> skills=query.getResultList();
		return skills;
	}
	
	
	
	public List<GenerateRequirement> findSkills(String keyword) {

		List<GenerateRequirement> skills = findSkills();
		List<GenerateRequirement> skill2 = new ArrayList<GenerateRequirement>();
		for (GenerateRequirement s : skills) {
			String skill = s.getRequiredSkills().toLowerCase();
			String designation = s.getDesignation().toLowerCase();
			String location = s.getJobLoc().toLowerCase();
			String companyName = s.getCompanyName().toLowerCase();
			if (skill.contains(keyword.toLowerCase())) {
				skill2.add(s);
			}

			else if (designation.contains(keyword.toLowerCase())) {
				skill2.add(s);
			} else if (location.contains(keyword.toLowerCase())) {
				skill2.add(s);
			} else if (companyName.contains(keyword.toLowerCase())) {
				skill2.add(s);
			} 

		}
		return skill2;
	}
}

