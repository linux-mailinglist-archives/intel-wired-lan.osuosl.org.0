Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 249F1A23898
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 02:21:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DB29847C3;
	Fri, 31 Jan 2025 01:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UxdVjWbLaYMC; Fri, 31 Jan 2025 01:21:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EA53847C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738286481;
	bh=zwy8OaLg+jW6HTcFdBmXuAr0Z8KbOURLmkSpTBHi2us=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IVjF8V1fwyIpU2zA2vVvMX0/dFeLKm0itwmzgOL1P7qUyHYwKl5+waQ55nQh9X/jx
	 0oOYB5zGAplzhrUQzOYH2IJHvseNRL03O+/zVtcqVjCjuia4lmdJ7UXdCxdjPVHZef
	 IEHo9dJ3j+GVxDJe01oQ9j19upUe/Y4Ru7lMXzmdkUbjJHg3ObEDql+O0rss5oYmhK
	 TOmbHipOtY0lbOW4WMLV2l4FUhK4vrkFXDe0Kk0V2fquAaboyyL1n7jZ+b/Ep4Hl2q
	 aVmq5TU4Yd58nxHUKTfrH7AkiWcgsdrgCvF6Dau8YvhQokhFPvsJVnFdryrdUoMGzR
	 lfpLwcKE+jv1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EA53847C6;
	Fri, 31 Jan 2025 01:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EB0C16E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 01:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7291542699
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 01:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d_f1QApwjy-u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 01:21:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=stephen@networkplumber.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 52FC84268F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52FC84268F
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52FC84268F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 01:21:18 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-21619108a6bso24981475ad.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 17:21:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738286477; x=1738891277;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zwy8OaLg+jW6HTcFdBmXuAr0Z8KbOURLmkSpTBHi2us=;
 b=Oy3p6a70uDU5Cas0+A1spPAkzp1vx4WaxPyQ2/wHzUiJB6JZVwYwLNWTxgPPTjWYuo
 e+43xopKuiDr2bUsPJ0iZipJ7phURwCbPVohy0JhJoky/o0sl8BvsWk0a7//qV4eqNmL
 /so17HwmPxUG96QNh3b3xhv9ltFNa/Z5EGjy1GJCX1++68uKehfoH9yB/iQkovBhcij6
 VKeHwYkYYNwV6yiRDQOxJBIr+FBovaQQbVyIxRnGWsmQ8oAjWDNNRSz2Qe/tNr1rbihk
 xHIzfvCBVauZMYBE7P/dNLCJK3ZBJxRBw3Xf6dOjyRMItk3g/7HT7pV3GzGWp0662vn+
 2svA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW8LUxK/bMSl4XoaYd8NijpQ14FqaDuM6W1oWhyGRnEo22S2kM9IFwaSZY0LL0ymnfS0MKZKSFzvl0tZeJ5JJY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz0BO3tcQouWwkZNDG0+Qq3Rk/PR1iZAWVM61ozNLvprxWhrNnG
 PUBoDB+0jwmsp7Qh7qjp88/DI7Lsn4YJHn0U4B1ma+tHKAwSbftiz83h3sH2+Gw=
X-Gm-Gg: ASbGncstpMgzOlzHUBRiF33/UsVgn2I5ttO6hVY0POrRfVsVr6tZ3uJ3QZ7kV3rHTaA
 Y61fBj6YReAttxedFj5DJ1Vxa/2qZGxI58k5fN7qTnLszMC7rwYBvTLEXRQshrbKcXMUuDw031y
 slRdNQWuf0CmVLHj/O+OEB7WVAzhDL+f9R6OIzOE8qaquzdjdfN4q+40ZZ5My4mgC+R3FQ7nmHL
 pL0jIErdR2nSEXHHJqH4g5G48voEnQW5v9URR7fT4p4ojDfFV7WWWy1c95kxSFHwr1PXClYAstI
 uNtwIA2BmIcT4oq+DtQABeYA0H6h9Wl4Hh+FZAcW53nNwg/ySko70f5FyV8M2NkHoEwu
X-Google-Smtp-Source: AGHT+IE5d3Xng8Gbz+waXlvAp1VaYRZNyfY6rOVlXpsHuKgENpUOvfzJUZuXjzdw0qgaIl35FroaGA==
X-Received: by 2002:a05:6a20:8423:b0:1d4:fc66:30e8 with SMTP id
 adf61e73a8af0-1ed7a4c9c39mr13630693637.10.1738286477424; 
 Thu, 30 Jan 2025 17:21:17 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-acec0a66c20sm1664099a12.77.2025.01.30.17.21.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2025 17:21:17 -0800 (PST)
Date: Thu, 30 Jan 2025 17:21:15 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20250130172115.2a116ccb@hermes.local>
In-Reply-To: <531227ca-89fe-4398-8cba-3647be509454@intel.com>
References: <20250130091111.46358882@hermes.local>
 <531227ca-89fe-4398-8cba-3647be509454@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1738286477;
 x=1738891277; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zwy8OaLg+jW6HTcFdBmXuAr0Z8KbOURLmkSpTBHi2us=;
 b=aQlCCx522aHM7CfS6F2K2dtWjXUuTGgwejJhKuez/aBfpoHCNzS2cywAG3vDtd+Qyv
 V7hIsIySL4eJjK6rUQe+GZfDQijjPf/6AadWMJx64SducMHRFk5i1iaaK/AKHZoMkMVH
 8QoFShmNp0A5ElpmGvF3JykUN+J3/CvtYbFDaEdE9IJazh6ag4ooML2dkQwQWuROTpuS
 kngGR7Q8MGOxaOBrPD6qYXdoJjI6oaBZr9L9Zp072Q13Q1o4x1kxiMw3R2DEsW0Mmh2o
 kKNmkjZLDSeHx8AWySSseOvR/BHKyowXXw7AZDXQ/A1JMWycyfd0ExOeNdQqRHevELea
 5NCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=networkplumber.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=aQlCCx52
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

On Thu, 30 Jan 2025 21:17:30 +0200
"Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:

> On 1/30/2025 7:11 PM, Stephen Hemminger wrote:
> > I am using:
> > 
> > 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
> > 	Subsystem: Intel Corporation Device 0000
> > 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
> > 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
> > 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
> > 	Capabilities: [40] Power Management version 3
> > 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> > 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> > 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
> > 	Capabilities: [100] Advanced Error Reporting
> > 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
> > 	Capabilities: [1c0] Latency Tolerance Reporting
> > 	Capabilities: [1f0] Precision Time Measurement
> > 	Capabilities: [1e0] L1 PM Substates
> > 	Kernel driver in use: igc
> > 	Kernel modules: igc
> > 
> > 
> > Using both Debian testing and my own kernel built from 6.12, the igc
> > driver appears broken after resume.  
> 
>  From which system state are you resuming?
> 
> > 
> > After resuming the device is down and no address present.
> > Attempts to set link up manually fail.  
> 
> Did you get any errors in the dmesg log?
> What is the firmware version on your device (you can get it by running 
> ethtool -i)?
> 
> > If I do rmmod/modprobe of igc it comes back.
> > 
> > Doing a bit of bisectting but it is slow going.  
> 
> Meanwhile, we'll also try to reproduce this issue in our lab.  Could you 
> share more details about your system so we can create a similar setup?

Given that error reported is -ENODEV, might be a generic netdev problem not
just for igc device.
