Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA9E701241
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 May 2023 00:45:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1328F42B9F;
	Fri, 12 May 2023 22:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1328F42B9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683931508;
	bh=MTHmooAvuX7h2EU46NienSqrO8WUvlHgse2G8BP/KUE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HDyt4mcyEAXRn4TYc4vBmlVwRWgZ47s41x2jOPzaVIqTiMBjhAlnFrgyzr/9SDA8Y
	 mYBpnuwerd60korK9cso09WQ9bdZNbDks9yQyLq6f0qWJR57rRMPqNbhaxYas4QOsL
	 zHTo3Tqi1ihgB3mlJ/IHhnt1dnjxS2rN4JuolXq/P1K1rWZ3cAS40Ga+9olJ3VD44u
	 nURQRe1M1gyvzdR+kqXeLrrWQhJ/fMQIDtqS6k9kvff+zTsbDRoyknC9uxo1bs+QtT
	 xff0AJNC4UQQKzBiTfI3HPhRwJNNHqGT51JDe6lGHGfgMcW/AnGgRLNX6qQ82M63ms
	 eJ/xFN0/MJTQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6cftakGATWn; Fri, 12 May 2023 22:45:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8BF14059C;
	Fri, 12 May 2023 22:45:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8BF14059C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB3671BF834
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 22:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CA00846FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 22:45:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CA00846FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPC_R8je1MOQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 22:44:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9B8184176
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9B8184176
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 22:44:58 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-1aae46e62e9so76028745ad.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:44:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683931498; x=1686523498;
 h=content-transfer-encoding:mime-version:message-id:subject:to:from
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XFQ/2RP5e7B7l7dZ9eJnr05aO9XkiNAXTWm3nVqTvwY=;
 b=K/yHItDZsSNf8FX28SowUn+j4Tt5RAxzPZnP8DtvEb+ZArVkHWi9B9edNXNSKLgcpu
 /O3g7YPwTuB5QAkPMcHzWLryVwK4lYKIc404Jm6WkivHSJcjYLaPuKGapJiOzQv08S+/
 CFkUNmKXBtGyO78a+tkTx8BhKc4T0QoEJPpDwVsI7LKn8yAzwOoO4ITCZNIhvLmK7804
 plz92JJkHm4d0G+ZUyCffiFo68L3qTpgTRbH4evOUi4duC0KMZDJo0ASUKvE9/hg6o9m
 pcuguTUQHsE4XSa9D5GFX256+M1l/q+Dvgt58UKDVnzo8vROuVFH5YhpyKfm9LKAU44g
 pWoQ==
X-Gm-Message-State: AC+VfDxPn3Q9ZPp0VLMDgPI8ai8qRAo0e+qyVgCTgHck5YJPxnROPZZN
 PQtzVPqBomZuWIGiuB7ixCLGrcC65lFtBwgVpFfV7w==
X-Google-Smtp-Source: ACHHUZ5WqOr5fwbF4bixOdC+ogjne9PiHEsrIQlEtnxrLGSBGLUY3RcQNDYQB/4QPWMcl8VP2Biwcg==
X-Received: by 2002:a17:902:c104:b0:1ab:e2a:85a4 with SMTP id
 4-20020a170902c10400b001ab0e2a85a4mr26762086pli.20.1683931497872; 
 Fri, 12 May 2023 15:44:57 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 a9-20020a170902ee8900b001a9293597efsm8439174pld.246.2023.05.12.15.44.57
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 May 2023 15:44:57 -0700 (PDT)
Date: Fri, 12 May 2023 15:44:55 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20230512154455.482511b7@hermes.local>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1683931498;
 x=1686523498; 
 h=content-transfer-encoding:mime-version:message-id:subject:to:from
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=XFQ/2RP5e7B7l7dZ9eJnr05aO9XkiNAXTWm3nVqTvwY=;
 b=5LsYDYCgSoCkHGhcJH5GLzqAWoAbhiFLUUKwGbZ2xH+03680mDa4aExlokdfLGKziZ
 PLUc9GDz71Q3daCp/Le513fURY8SVAoBvhp4U+E7CMA1y99sNxcTIfzErEzwN79WwhxK
 MLHa5I9BxMJu0A96Vi+TvS+ZOWBGDa+uaf4svQWLYmX3dupxO9Foo7/gM4kUUFYGipkc
 DiK3w+3o15Ru9BuE75xJRQfNjEMvl8Ct8NaEQgohBskh42OIwVttnQe1vxbM315GwiUy
 t6bc0mfphUkE4Q2SV4bCeMf1hNu1WLIxjfQsFB4o9Q6V/sR9pHv7aWuhw93vQHOSON18
 PF7Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com
 header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=5LsYDYCg
Subject: [Intel-wired-lan] Fw: [Bug 217436] New: Low speed download when
 using the e1000e driver on Intel I219-V
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Looks like the submitter has suggested fix already

Begin forwarded message:

Date: Fri, 12 May 2023 21:41:22 +0000
From: bugzilla-daemon@kernel.org
To: stephen@networkplumber.org
Subject: [Bug 217436] New: Low speed download when using the e1000e driver on Intel I219-V


https://bugzilla.kernel.org/show_bug.cgi?id=217436

            Bug ID: 217436
           Summary: Low speed download when using the e1000e driver on
                    Intel I219-V
           Product: Networking
           Version: 2.5
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: Other
          Assignee: stephen@networkplumber.org
          Reporter: kovalev@altlinux.org
        Regression: No

Hello,

I have encountered a very low download speed using the e1000e driver for wired
ethernet connection via an internal I219-V network card on linux kernel
5.15.72. However, on kernel 5.15.107, the system stops loading altogether. 

On the latest 6.1.27 kernel also has a slow download speed.

-- 
You may reply to this email to add a comment.

You are receiving this mail because:
You are the assignee for the bug.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
