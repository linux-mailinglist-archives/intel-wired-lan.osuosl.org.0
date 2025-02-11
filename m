Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA404A31499
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 20:05:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12C0C810DD;
	Tue, 11 Feb 2025 19:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1FCvNKzp8_by; Tue, 11 Feb 2025 19:05:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7A8180EFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739300735;
	bh=ZgbABN938gsxyNDM9rcw0VT4DABEqbSkFf7DzPWAbSo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G80C2zazuB3W+l4BstEn1BwhFI0QJmVTorGx3Ue4jDM7+lf0exw0GXwtfuU7CMRh5
	 qxIkWj3gR0Ps55y8kWfzYrxogVlMVhX9gq4YUtQddie8hOMyX1IV2Fiz3EJqVbYaeA
	 0HNSbwISaZ3lFm0yng6knmxNFxhvr1nGDf5a0bAKMkiktEoNW0kDBhRsujjmuxypnW
	 H958k3Euy+b76BdRWK6nBGotITVEQea3q0dQ/wFABiK9juBOHLDG3fEz6GUECD+1iN
	 LUprWIazmlZIWfQ22vWlzLMJE1C/cNREm27pOpWgUpdAadWdJhXojqa8HaK3f/W7vK
	 z3v/D6tAeN2+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7A8180EFC;
	Tue, 11 Feb 2025 19:05:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A2F1F194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 19:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87A5780EF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 19:05:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v0DYmZsr21qB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 19:05:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=stephen@networkplumber.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BE8A380D52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE8A380D52
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE8A380D52
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 19:05:31 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-21f62cc4088so70626015ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 11:05:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739300731; x=1739905531;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZgbABN938gsxyNDM9rcw0VT4DABEqbSkFf7DzPWAbSo=;
 b=B/S+Mri+5WHrrVuSA91vf8c3ktfekE0rL9t8ZIOWEMZrYEFoTTEV+j5YNRNqEOow6Z
 sQBcN07QxgwFio+XJq0JoW6/QIXtsg958/8SxPfJgW6ep4ysQ1B/KMwucI6vm0Wy5HJB
 9kxaGQcsxKgvmJIu9r2XZcdNu/xyjoEEtwl7n1Zy/UxHil0i8XFKLj4XDPvGger/nl8A
 7ufggbWTeYgL2exjXU0XWQhhdz2dQW+lrZI4aVTCBSP2r7Ju09z+htaFiyMpfjrFEtI5
 +nQBcb0CSMoipfQaRw56QQIAkgt9OEk3PgO6UfEcpAJTyn92BUrm1H9YrDiYgG880p3n
 Bg3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXPpzQelIE1V8GhbsAbHbqNk0EIGSOvBHbFiQ/UbBFe5Ss8UMD50aHhZWXy1HcRaNADd0Y4Qh2QP+XzJwIfzUM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxl8AytoEJR1QDr/pfZKivWjkR8q+VsGAqWpnTIYOtd7Q4AtqWt
 u0Wd3o8+4kVu5trZvhJCS7JUL7LnyxtG8INb+/U1HxqBfd0tzCF5zDeGJ6FjF6tmZXsUVxt6oRL
 A
X-Gm-Gg: ASbGncusAay6tU0pft57gwSz9wHO/Ch9NrUpsK1fOdeLHywM3qL62XM+Kou1vj+aqCF
 LkGi3fa7QThAcRXfvBBJdUqZTugd78dHkURyB8Ud8lqj7WeJ//fNSav/sDGC0w6ddt4rDg2bjcI
 GOr3auGoGfREPiX3LGQ0hU+yRn/fNY0PIyJtP4UTyN6K4dPAKyavg8aG70FnjgBY0ndXzgzVkU1
 FBNFIKMXDzDhhWODIVZPn7EzYb21gSBsS39WQll/5QjkEvaujmFzXpQimf3s5b/HTFjb7kmq2dG
 yZ0u3I1dy2NgxzxVeM/J5C+1B4+N6dUWNReWBOwImAsMrMeEtKN0fmaG5N8Ke5eCcHsC
X-Google-Smtp-Source: AGHT+IEezC5d01KQYYfhkFQtSX2FZWQAFRUKSBlkECKLcNgQH2b1LrnsEU75cPEATx/YnK1PHo1zYw==
X-Received: by 2002:a05:6a00:2e84:b0:730:888a:252e with SMTP id
 d2e1a72fcca58-7322c411a33mr139899b3a.17.1739300730868; 
 Tue, 11 Feb 2025 11:05:30 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73086e6636csm4933726b3a.135.2025.02.11.11.05.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2025 11:05:30 -0800 (PST)
Date: Tue, 11 Feb 2025 11:05:28 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20250211110528.172488ff@hermes.local>
In-Reply-To: <75893f75-223c-4b36-a2c1-8c9576438c4f@intel.com>
References: <20250130091111.46358882@hermes.local>
 <531227ca-89fe-4398-8cba-3647be509454@intel.com>
 <20250130172115.2a116ccb@hermes.local>
 <531e3767-05c8-cb5f-6f3c-1860125ef408@intel.com>
 <20250205201327.7a4555cf@hermes.local>
 <4f913b04-36d1-58fd-bc93-666eaa6cc756@intel.com>
 <20250206120903.19db6882@hermes.local>
 <75893f75-223c-4b36-a2c1-8c9576438c4f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1739300731;
 x=1739905531; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZgbABN938gsxyNDM9rcw0VT4DABEqbSkFf7DzPWAbSo=;
 b=yhEZ1H/MIGQlCTahENf1s6kbPTxFYqBxShXG4ZJ7KsgtMNw5S8kJT5MzmWjyEOdMnN
 HRg4Ne9q//5jKQdaZ9uJTb23X6k4RtpLxbwoXJu34scVaXfY+/ZVQguOc6qi4cV28yNH
 NfRqfXratrKhejyASketQnWeDtjvgK64YzfkaZDjR2agkIa9aZyM7ZuAN0//MZBe/+ZC
 3viKn6iJLNA6toGxCnHE6QCrK+kYi33oicOcS0t0+ALg21viSE0+D+OB0zWtrxpaFYly
 Ra205wVe9AaFENwmFRa0M6FFeMGWSdjT1FYhZN+bioVl/7WBosT4BMwXum97g/6Xff/L
 43bQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=networkplumber.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=yhEZ1H/M
Subject: Re: [Intel-wired-lan] suspend/resume broken of igc driver broken on
 6.12
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

On Tue, 11 Feb 2025 20:20:03 +0200
"Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:

> On 2/6/2025 10:09 PM, Stephen Hemminger wrote:
> > On Thu, 6 Feb 2025 15:17:00 +0200
> > "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> >   
> >> On 2/6/2025 6:13 AM, Stephen Hemminger wrote:  
> >>> On Wed, 5 Feb 2025 12:36:31 +0200
> >>> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> >>>      
> >>>> On 1/31/2025 3:21 AM, Stephen Hemminger wrote:  
> >>>>> On Thu, 30 Jan 2025 21:17:30 +0200
> >>>>> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> >>>>>         
> >>>>>> On 1/30/2025 7:11 PM, Stephen Hemminger wrote:  
> >>>>>>> I am using:
> >>>>>>>
> >>>>>>> 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
> >>>>>>> 	Subsystem: Intel Corporation Device 0000
> >>>>>>> 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
> >>>>>>> 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
> >>>>>>> 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
> >>>>>>> 	Capabilities: [40] Power Management version 3
> >>>>>>> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> >>>>>>> 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> >>>>>>> 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
> >>>>>>> 	Capabilities: [100] Advanced Error Reporting
> >>>>>>> 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
> >>>>>>> 	Capabilities: [1c0] Latency Tolerance Reporting
> >>>>>>> 	Capabilities: [1f0] Precision Time Measurement
> >>>>>>> 	Capabilities: [1e0] L1 PM Substates
> >>>>>>> 	Kernel driver in use: igc
> >>>>>>> 	Kernel modules: igc
> >>>>>>>
> >>>>>>>
> >>>>>>> Using both Debian testing and my own kernel built from 6.12, the igc
> >>>>>>> driver appears broken after resume.  
> >>>>>>
> >>>>>>     From which system state are you resuming?
> >>>>>>        
> >>>>>>>
> >>>>>>> After resuming the device is down and no address present.
> >>>>>>> Attempts to set link up manually fail.  
> >>>>>>
> >>>>>> Did you get any errors in the dmesg log?
> >>>>>> What is the firmware version on your device (you can get it by running
> >>>>>> ethtool -i)?
> >>>>>>        
> >>>>>>> If I do rmmod/modprobe of igc it comes back.
> >>>>>>>
> >>>>>>> Doing a bit of bisectting but it is slow going.  
> >>>>>>
> >>>>>> Meanwhile, we'll also try to reproduce this issue in our lab.  Could you
> >>>>>> share more details about your system so we can create a similar setup?  
> >>>>>
> >>>>> Given that error reported is -ENODEV, might be a generic netdev problem not
> >>>>> just for igc device.
> >>>>>         
> >>>>
> >>>> We weren't able to reproduce this issue on our systems, even though we
> >>>> tried several suspend-resume cycles on different kernels and different
> >>>> systems.
> >>>>
> >>>> However, a few days ago we received a comment in a BZ about an issue
> >>>> similar to yours. In there adding a short delay in igc_resume function
> >>>> https://bugzilla.kernel.org/show_bug.cgi?id=219143
> >>>> https://bugzilla.kernel.org/show_bug.cgi?id=219143#c123
> >>>>
> >>>>
> >>>>
> >>>> Can you try to see if it fixes your issue as well?  
> >>>
> >>> I tried the proposed delay and it had no impact.
> >>> Any idea of other things to instrument?
> >>>      
> >>
> >>
> >> Has the adapter worked with a different kernel? Can you try to reproduce
> >> the issue over kernel 6.9?
> >>
> >> Is the LAN cable connected to the igc adapter? Does it maintain link
> >> during suspend?
> >>
> >> Also, I saw that on your board you have three more adapters, I assume
> >> that enp2s0f0np0 and enp2s0f0np1 are i40e adapters. Does this issue also
> >> happen to enp87s0?  
> > 
> > This is a new machine, and not sure if it ever worked.
> > I can boot some older distro via USB if that helps.  
> 
> Yes, please.
> It might help us in narrowing down the issue.
> 
> > 
> > The LAN cable is always connected (it is a desktop box), and the
> > 10G NIC's are not used; they are connected by a loopback cable and
> > used for DPDK testing occasionally.
> > 
> > It does work in Windows...  
> 
> Do you work with Network Manager? If so, is it possible to see if the 
> issue can be reproduced with it disabled?
> 

Yes Debian uses Network Manager, but disabling it might not be possible.
