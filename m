Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D55A1AAF32C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 07:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 743038299E;
	Thu,  8 May 2025 05:52:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id itT9DirTSHZO; Thu,  8 May 2025 05:52:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BD6E829B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746683548;
	bh=i96evhJ3L1i9OAU+AfaaUL87qGEjMeohLnza5fm08Wg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nOVyEdy6IeUtMisQxRBbFHXsCAeZtdt5uZgqDrORKHEXs5jMA6WV5mT9J+0HY6ylu
	 zAERY9C97l4AE1uODMTSn0gBiBGtl0cURQmhjO6U8+nItuBosFwS7AVdXrekYU6E/R
	 WfKsQ8w6EUqG9IW6iTjGnu2Tnyh+t/yXrlL8Ty/Azug8MqKH22YNlGw3hoCyZKd9ys
	 ZecoI+p7WiokpzTN2GrWQLPJfiXt0M9QWivw13bYC/2MDTs/zPnhGUmopf82uMSbOq
	 H51CduP9omaXlG2FTSRE/s8xoT82K0i4qSkqcB0Q4dXDc59SPzf3Afij09PacGTiNt
	 /m0e8frZ5D1EQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BD6E829B6;
	Thu,  8 May 2025 05:52:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 90F8E439
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 05:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77A754033C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 05:52:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pv6LRNWT5uws for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 05:52:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D53CB406D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D53CB406D6
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D53CB406D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 05:52:26 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-736c3e7b390so640975b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 May 2025 22:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746683546; x=1747288346;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=i96evhJ3L1i9OAU+AfaaUL87qGEjMeohLnza5fm08Wg=;
 b=LEOU5trl6vJpYI9hQtRQRIWSjz9ASnY69joWO8uyZoXlrBlDWU5lQP5JpA2CLFBwqU
 mpzUpjXiMp+bpugL2IBuDK/3weMicHnm0iNISgu/gYUFamaagzyzZTM7mXALhCf53PZ0
 uNv9BJq6vTA/XVxzlobi6SIa2xJnpDJkGsiUbUr9o0dsgrW7AidJnz8LmjjlBcZ0dG1P
 1ZOWlFT8wIf2O44+/uCRw0vVxj1XhjxXIXoa9XUHKocfqlt4J3F1exq8Mxl9me/qfqVc
 OnF3+bbLST5nQrDjOOgDnmvUC5tVJgD0WwqoRPwx4G9klxRysELE7fWdO3aWwAlIoTGW
 75Zg==
X-Gm-Message-State: AOJu0YzEBCXexPxbTS332s7y677n2I/VGTVk1zHoMxW+iAIxIMDgyvOe
 +ppncYBw33ETD0HUVpFlavxvgQr3S3CpU9pvYEy/4454g+ZF9Hv2H9xzuslImFs=
X-Gm-Gg: ASbGncu5IYQqxTriexP08Z86fszwQkZ95wcKFtfC+feRKkldSyv+U5SgSwUeSsgxSFp
 bc1WH35X3feGmc4T91SfTTSr++jnKEadU+QLJQgNxUsmfAnisCN9ukKcwtfcTQRh+v1Qb40CYC/
 T9Z1LaS3g0CCvzABhBOuGLj8UYsZzfxiHZWKYtPRadjSBwl2HbyCvmDXmGY1gKXkWcSXaejsHeD
 wEhXNA3XkeUGvevGF1tdavxWNRenZB3iIPTUs0qsz7nCp8mK5rvCIJihrNW3iYw/ibry1W5qF2X
 LK8VNCrS69hlWxUHXGWkrlmGb7R37k84PN4/+QiJi+2w0wUaZw==
X-Google-Smtp-Source: AGHT+IGmwK30GKDHe76KfJPNmh+RRFgtlk9wRBYzR5kfcfKZL7Pabnt4BlHQN5A4h5RiewR3yM1+wQ==
X-Received: by 2002:a05:6a00:428a:b0:740:6f69:f52a with SMTP id
 d2e1a72fcca58-740a98634bbmr3130848b3a.0.1746683546092; 
 Wed, 07 May 2025 22:52:26 -0700 (PDT)
Received: from [127.0.0.1] ([104.28.205.247]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-74058dbbb15sm12759071b3a.58.2025.05.07.22.52.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 May 2025 22:52:25 -0700 (PDT)
Message-ID: <cf46f385-0e85-4b71-baad-3b88b1d49376@cloudflare.com>
Date: Wed, 7 May 2025 22:51:47 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, jacob.e.keller@intel.com,
 netdev@vger.kernel.org, kernel-team@cloudflare.com
References: <20250422153659.284868-1-michal.kubiak@intel.com>
 <b36a7cb6-582b-422d-82ce-98dc8985fd0d@cloudflare.com>
 <aBsTO4_LZoNniFS5@localhost.localdomain>
Content-Language: en-US
From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
In-Reply-To: <aBsTO4_LZoNniFS5@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1746683546; x=1747288346;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=i96evhJ3L1i9OAU+AfaaUL87qGEjMeohLnza5fm08Wg=;
 b=RbNtfLL72H8Wf/ChGPoXSNDLK5+wwRUecIq+b8D6oRZgmqLUDvuA6U9SYNY5vVlanW
 Me+3VzXkin/YTfEXY/JN3UD+ge4wyIM2UgEdrVlwQtphpcq1KUxYBuHbpR6UOX3PhUbB
 lRBPKt5bh2YCjtrAQleXtVpUuuE3ZahePcZQk3D6OaaX0e7j+iysXMR8EqX+dxpvllU6
 u788N97iUfFZE5Rk10YrL25wO4BMeCv7fEAsvboCYQjUo70fmkL0u7KE/T1zWF/la7Lu
 ZF5deA/inJLwloq/NMop8xuxr3ekyU9QtWsvengdES9eRcPpLt2UXT1Us3DOZsrZP+yk
 af1A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=RbNtfLL7
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] Fix XDP loading on
 machines with many CPUs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/7/25 1:00 AM, Michal Kubiak wrote:
> On Tue, May 06, 2025 at 10:31:59PM -0700, Jesse Brandeburg wrote:
>> On 4/22/25 8:36 AM, Michal Kubiak wrote:
>>> Hi,
>>>
>>> Some of our customers have reported a crash problem when trying to load
>>> the XDP program on machines with a large number of CPU cores. After
>>> extensive debugging, it became clear that the root cause of the problem
>>> lies in the Tx scheduler implementation, which does not seem to be able
>>> to handle the creation of a large number of Tx queues (even though this
>>> number does not exceed the number of available queues reported by the
>>> FW).
>>> This series addresses this problem.
>>
>> Hi Michal,
>>
>> Unfortunately this version of the series seems to reintroduce the original
>> problem error: -22.
> Hi Jesse,
>
> Thanks for testing and reporting!
>
> I will take a look at the problem and try to reproduce it locally. I would also
> have a few questions inline.
>
> First, was your original problem not the failure with error: -5? Or did you have
> both (-5 and -22), depending on the scenario/environment?
> I am asking because it seems that these two errors occurred at different
> initialization stages of the tx scheduler. Of course, the series
> was intended to address both of these issues.


We had a few issues to work through, I believe the original problem we 
had was -22 (just confirmed) with more than 320 CPUs.

>> I double checked the patches, they looked like they were applied in our test
>> version 2025.5.8 build which contained a 6.12.26 kernel with this series
>> applied (all 3)
>>
>> Our setup is saying max 252 combined queues, but running 384 CPUs by
>> default, loads an XDP program, then reduces the number of queues using
>> ethtool, to 192. After that we get the error -22 and link is down.
>>
> To be honest, I did not test the scenario in which the number of queues is
> reduced while the XDP program is running. This is the first thing I will check.

Cool, I hope it will help your repro, but see below.

> Can you please confirm that you did that step on both the current
> and the draft version of the series?
> It would also be interesting to check what happens if the queue number is reduced
> before loading the XDP program.

We noticed we had a difference in the testing of draft and current. We 
have a patch against the kernel that was helping us work around this 
issue, which looked like this:


diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c 
b/drivers/net/ethernet/intel/ice/ice_irq.c
index ad82ff7d1995..622d409efbce 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -126,6 +126,10 @@ static void ice_reduce_msix_usage(struct ice_pf 
*pf, int v_remain)
      }
  }

+static int num_msix = -1;
+module_param(num_msix, int, 0644);
+MODULE_PARM_DESC(num_msix, "Default limit of MSI-X vectors for LAN");
+
  /**
   * ice_ena_msix_range - Request a range of MSIX vectors from the OS
   * @pf: board private structure
@@ -156,7 +160,16 @@ static int ice_ena_msix_range(struct ice_pf *pf)
      v_wanted = v_other;

      /* LAN traffic */
-    pf->num_lan_msix = num_cpus;
+    /* Cloudflare: allocate the msix vector count based on module param
+     * num_msix. Alternately, default to half the number of CPUs or 128,
+     * whichever is smallest, and should the number of CPUs be 2, 1, or
+     * 0, then default to 2 vectors
+     */
+    if (num_msix != -1)
+        pf->num_lan_msix = num_msix;
+    else
+        pf->num_lan_msix = min_t(u16, (num_cpus / 2) ?: 2, 128);
+
      v_wanted += pf->num_lan_msix;

      /* RDMA auxiliary driver */


The module parameter helped us limit the number of vectors, which 
allowed our machines to finish booting before your new patches were 
available.

The failure of the new patch was when this value was set to 252, and the 
"draft" patch also fails in this configuration (this is new info from today)


>> The original version you had sent us was working fine when we tested it, so
>> the problem seems to be between those two versions. I suppose it could be
So the problem is also related to the inital number of queues the driver 
starts with. When we
>> possible (but unlikely because I used git to apply the patches) that there
>> was something wrong with the source code, but I sincerely doubt it as the
>> patches had applied cleanly.
The reason it worked fine was we tested "draft" (and now the new patches 
too) with the module parameter set to 384 queues (with 384 CPUs), or 
letting it default to 128 queues, both worked with the new and old 
series. 252 seems to be some magic failure causing number with both 
patches, we don't know why.


Thanks for your patience while we worked through the testing differences 
here today. Hope this helps and let me know if you have more questions.


Jesse

