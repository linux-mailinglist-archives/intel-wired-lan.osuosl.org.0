Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C83B0A314A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 20:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCAA9410C4;
	Tue, 11 Feb 2025 19:09:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xss41L67cnn3; Tue, 11 Feb 2025 19:09:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D48B40686
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739300965;
	bh=ztsv8BZjRreOpaG/iC+GDxBqZQTWZNZkz7WuEjdo0fA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xAJ04pdrU3pXG6ittL7zbZosObrTiYakPjQkARpqJAvPB2TH1wA15FFwyMESf9hyo
	 LFLmmemcyKM5FjMvuZgrS85xLt+hc8isiMzVRtYEVClvbuq/PGlWJMuomZd7qnNHeY
	 /scty2H2hr1f5HWVacPuUzq17H3j9lACVpQ3HnZxJyw5knmlp0E33++Y+3NWBuBFVB
	 W9pfQd+sq58XnJydZUHa8VEk2gb8F0Pxn2OTXF7yyu2389HDd3VdcCpTxBUppB9GHu
	 tUqBaB7zhBEGlUqiYUg4Py1/dkN4HXdFHIukY2RDIWT3QGZgkfzlkd/WXjFb+tXtUg
	 jnL9dO0g58/+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D48B40686;
	Tue, 11 Feb 2025 19:09:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C5446C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 19:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BABC4076A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 19:09:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e84Kc_EMbX9g for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 19:09:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102f; helo=mail-pj1-x102f.google.com;
 envelope-from=stephen@networkplumber.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D2F2840686
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2F2840686
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2F2840686
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 19:09:21 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 98e67ed59e1d1-2fa19e1d027so7834337a91.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 11:09:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739300961; x=1739905761;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ztsv8BZjRreOpaG/iC+GDxBqZQTWZNZkz7WuEjdo0fA=;
 b=KP7xfDIbzOtNAwdebwzYSaS5645UNvHbp2FlZWHZdCelgAXgw5k+IzSge+ypwOK9ng
 zU0YjIDRWmWwUb5eijWAznhtoljRpDitrfWeYTJyVAsJBdMLVY4wiRCb2F5Rk619Or7R
 HONWIPICmpHbKtPwT0g+GcX7e8BON3P1wQTmfbxeiqr6rdlSVBljcr/sG0Ewaf5v05Wm
 njyLah0tVHMmPgW2mAI+1ZW2FKoGLiVmAL+HdETuBLbOVgAOVwRfyxFk1/I6njXAs7Su
 1gocSqUXuIYwWzUrnqYv7Wjb34s3KWfH66OKjZw+rhYFx32//R2D+YXGXuITkcpWlzlC
 hVfw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVSR+FESJx24QWtrrDazQH6QvmQtuxWR5JuGvJwQ5UrLcwVyFUsLV7B8nCagj4d0W02C6sMKTdN4mhHT/6IBjg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzAXVln1OpEJ9qVwI53G8roTygi10MiaB9D3Ej6v7NohBGUyPGl
 yxTzn2vRIyEJMFvGD4QoGhGYpCYEfqqBluHHGXlHQdS6kyQWiQkkc9lnQ/5/sM4=
X-Gm-Gg: ASbGnct230dlWfQH1G5NbPuYz6b40bWlfQytw5Rjg96ywPzXYHnGIoeV6I6BMRyE+mg
 LBpSdW76VEqQ4PEMI5PAyJgsFGQxD9csRnN/H+eMaqaXVhNG9DkeRrfGK9rS/FfCXKEUh8qkoIs
 Q7n69Z6pWGt9x8g5sxIQu1ip/jf67/vrQQAWG21unSPhai+FSBfx602YR3k8t9WNX/171tZ3sfd
 sbBfJ+U1trKP1g/P7vQo/fe0ZmytzrxrMv+FLOKBnfZRjn8cwimQaSqnkC15WSgMQoBSnIM0Nk7
 bHY+UB+8GrFzbiN/svOxv7z0jemhJXWxiZa/jyllOWql17bIAMEwYd141ApXe9fyWHzm
X-Google-Smtp-Source: AGHT+IG7D26RjiiD+iArVmZbC0xvWc5rr0wKdfpf9EXlqDJwPpVhC9G13hKBewIgOq1w4xJMPMyR7g==
X-Received: by 2002:a17:90b:2dc3:b0:2ee:acb4:fecd with SMTP id
 98e67ed59e1d1-2fbf5bf358fmr355084a91.9.1739300961034; 
 Tue, 11 Feb 2025 11:09:21 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2fa099f4de8sm10949988a91.8.2025.02.11.11.09.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2025 11:09:20 -0800 (PST)
Date: Tue, 11 Feb 2025 11:09:17 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20250211110917.1db51003@hermes.local>
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
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1739300961;
 x=1739905761; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ztsv8BZjRreOpaG/iC+GDxBqZQTWZNZkz7WuEjdo0fA=;
 b=XL+tITR+8TR7zJbQWSHSaJm2P7w1ZooFWMvwt9j7/zhz+mqIXEv0UEz8y3S7m2uGeU
 E7Y68pBL0zdVTzXBBU6DHoVfay/LeOH+vqWTF/XqEerxxHTFoz8NC6pNTeHHFM4fTEgJ
 BL2puRWDdFhlgje7Y7VR/nSSyce4jTJUSgxDCOl4EFkFDylw45duthIrctidWf6E7CVR
 sg7MmmlJgLUhV5OlrNaF9d0UTZ7Y072ptWTY9u+t5Ta6APMacnZ0cZWx43QeO4kJj+kA
 iNZpSXQlNeLDOAT/P+xqb7LoUAFeR1vCo1V1eZ9eZ0lRcEJTUOc/Ge+HJprpVBO+da7L
 VAOA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=networkplumber.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=XL+tITR+
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

> 
> 
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

If network manager is disabled with:
# systemctl stop NetworkManager.service
# systemctl disable NetworkManager.service


Then device persists across suspend/resume.


