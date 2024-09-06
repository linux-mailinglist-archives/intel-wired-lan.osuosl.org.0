Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A433696F6A3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 16:25:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 104608169F;
	Fri,  6 Sep 2024 14:25:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s_3BvUaiB9bB; Fri,  6 Sep 2024 14:25:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52DB081751
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725632737;
	bh=+awdkgcqXaMAPB7BpN1GvvWlqJvyzdLn+E4BenWut/k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c6eIGXM9gZOjwjJRALwKCFUwTXkd4umN9EPfhqnawmR+L6ALmVRUZ8unnY4Kn+xIo
	 +KXHsJaRi5v49tGsnTZNokM6sNmBdKTpDVx8GsxvB8Mkt/s6tZaqJFQig1kquEvALw
	 bqZ1foAn3daC64IV0qcyWaCviOplKqY7uKXcCl7VvVdWmsfX8dTqaHFo3jSP49R112
	 xQCW5Hd4H31mY+lGrJRj/eEdyyDe/6d0vvCvgtvFTnoZWSHWdG3zwEyQ4X8fxmxLXO
	 kX8ag2iCT65jA3aQOpRVY4hcjuXf246RWAHR16SdnYgUyeAfGOUSleEcNLAXk/bxez
	 Tb4DlfEeEYp6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52DB081751;
	Fri,  6 Sep 2024 14:25:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C5FA1BF575
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 96AEF81493
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:25:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PJDW49zD6-oZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 14:25:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B01738144D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01738144D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B01738144D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:25:34 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-124-tFFHyo2cMLSx2ihMO5kHEQ-1; Fri, 06 Sep 2024 10:25:29 -0400
X-MC-Unique: tFFHyo2cMLSx2ihMO5kHEQ-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-42bb6f0f35cso16668605e9.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Sep 2024 07:25:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725632729; x=1726237529;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+awdkgcqXaMAPB7BpN1GvvWlqJvyzdLn+E4BenWut/k=;
 b=k8jGH9cK/F7/OH2p4buKR0oSZRB/CsOKTETlFl0sSJRkQsdQrrTtCKichX8KIIxhkh
 ciIBspoMnZp75twEfG3CmYKo/iIGlnqSbKKG3GvDtMmt66pj211QfXjUxN2ggtUSG1Hu
 hDIJOIGqmCQk+fH60xsReq4lOLhmoPDFhWcMztUMMVE4cdfbRxkNlidnIQVru4qZkEyl
 UukW5FBrcUknNVU2mNDvlRIh8icZjOAVLq+lx51zVeTYlvaFVVQSBXvTASL8A6rZ5FoF
 6/HIrt9IvRvhftjYrAkynIHO8drx0KUeDK2vzJKoTAYQ7TP3y4FWa3eI5tn2FwUJOtec
 eI6g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWrxfUS8IqRLvgC/0jBi7TLuFPmnL0RajV4Mky+Wv/OSMuROH55/JtC5uosyLo8jNKb6xSOUZGQaRIVRReFuW4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzopB7WGBmhXjz3iSQFoUoOE7V0X8WV2OJXo9U9+sqCUIyDzmey
 d8U2lV+X5fglNxxOIhwRLmI8VuVQWVZ443R034KpjKmxCnBYwMeF0ytvw4JjXSQt4/B4oe28ok4
 j8zqpHIjfSA1jkwxoD0Z5M6yiqZHIEgsCrWOCbW4mi9VN4XlVPj/klGnp5ChpP7x8dNQ=
X-Received: by 2002:a05:600c:3b29:b0:427:ff7a:794 with SMTP id
 5b1f17b1804b1-42c9f972fd0mr18240795e9.4.1725632728629; 
 Fri, 06 Sep 2024 07:25:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWjALGFtsurtRTbvBx3AjYYILknCDM4oacHLdEQEnmM0Qm74uNXQuxRhlYs+vOKF88iRzxjw==
X-Received: by 2002:a05:600c:3b29:b0:427:ff7a:794 with SMTP id
 5b1f17b1804b1-42c9f972fd0mr18240495e9.4.1725632728056; 
 Fri, 06 Sep 2024 07:25:28 -0700 (PDT)
Received: from [192.168.88.27] (146-241-55-250.dyn.eolo.it. [146.241.55.250])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ca05d3052sm21983555e9.25.2024.09.06.07.25.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Sep 2024 07:25:27 -0700 (PDT)
Message-ID: <8ba551da-3626-4505-bdf2-fa617d4ad66b@redhat.com>
Date: Fri, 6 Sep 2024 16:25:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1725457317.git.pabeni@redhat.com>
 <160421ccd6deedfd4d531f0239e80077f19db1d0.1725457317.git.pabeni@redhat.com>
 <20240904183329.5c186909@kernel.org>
 <8fba5626-f4e0-47c3-b022-a7ca9ca1a93f@redhat.com>
 <20240905182521.2f9f4c1c@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240905182521.2f9f4c1c@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725632733;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+awdkgcqXaMAPB7BpN1GvvWlqJvyzdLn+E4BenWut/k=;
 b=PX9+6F5uWGhreYX7anhISec4v6ZxesGMrzZ6lmy6y48qgTnF9UH++MeTfS8xBXR2bkVeUq
 sJ8Vot15qfsx/XZot11JcflVFK1PYqWxeI1BpesFSqjPyAUHZRbndgI+LzBrMuW2AwSR+p
 IOceiWPje+OLJvxR2N+XQGG4pE3Er6U=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PX9+6F5u
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 07/15] net-shapers:
 implement shaper cleanup on queue deletion
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/6/24 03:25, Jakub Kicinski wrote:
> For the driver -- let me flip the question around -- what do you expect
> the locking scheme to be in case of channel count change? Alternatively
> we could just expect the driver to take netdev->lock around the
> appropriate section of code and we'd do:
> 
> void net_shaper_set_real_num_tx_queues(struct net_device *dev, ...)
> {
> 	...
> 	if (!READ_ONCE(dev->net_shaper_hierarchy))
> 		return;
> 
> 	lockdep_assert_held(dev->lock);
> 	...
> }

In the IAVF case that will be problematic, as AFAICS the channel reconf 
is done by 2 consecutive async task, the first task - iavf_reset_task - 
changes the actual number of channels freeing/allocating the driver 
resources and the 2nd one - iavf_finish_config - notify the stack 
issuing netif_set_real_num_tx_queues(). iavf_reset_task can't easily 
wait for iavf_finish_config due to locking order.

> I had a look at iavf, and there is no relevant locking around the queue
> count check at all, so that doesn't help.

Yep, that is racy.

>> Acquiring dev->lock around set_channel() will not be enough: some driver
>> change the channels number i.e. when enabling XDP.
> 
> Indeed, trying to lock before calling the driver would be both a huge
> job and destined to fail.
> 
>> I think/fear we need to replace the dev->lock with the rtnl lock to
>> solve the race for good.
> 
> Maybe :( I think we need *an* answer for:
>   - how we expect the driver to protect itself (assuming that the racy
>     check in iavf_verify_handle() actually serves some purpose, which
>     may not be true);
>   - how we ensure consistency of core state (no shapers for queues which
>     don't exist, assuming we agree having shapers for queues which
>     don't exist is counter productive).

I agree we must delete shapers on removed/deleted queues. The 
driver/firmware could reuse the same H/W resources for a different VF 
and such queue must start in the new VF with a default (no shaping) config.

> Reverting back to rtnl_lock for all would be sad, the scheme of
> expecting the driver to take netdev->lock could work?
> It's the model we effectively settled on in devlink.
> Core->driver callbacks are always locked by the core,
> for driver->core calls driver should explicitly take the lock
> (some wrappers for lock+op+unlock are provided).

I think/guess/hope the following could work:

- the driver wraps the h/w resources reconfiguration and 
netif_set_real_num_tx_queues() with dev->lock. In the iavf case, that 
means 2 separate critical sections: in iavf_reset_task() and in 
iavf_finish_config().

- the core, under dev->lock, checks vs real_num_tx_queues and call the 
shaper ops

- the iavf shaper callbacks would still need to check the queue id vs 
the current allocated hw resource number as the shapers ops could run 
in-between the 2 mentioned critical sections. The iavf driver could 
still act consistently with the core:

   - if real_num_tx_queues < qid < current_allocated_hw_resources
     set the shaper,
   - if current_allocated_hw_resources < qid < real_num_tx_queues do
     nothing and return success

In both the above scenarios, real_num_tx_queues will be set to 
current_allocated_hw_resources soon by the upcoming 
iavf_finish_config(), the core will update the hierarchy accordingly, 
the status will be consistent.

I think the code should be more clear, let me try to share it ASAP (or 
please block me soon ;)

Thanks,

Paolo

