Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97529A1AB3A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 21:27:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4065542572;
	Thu, 23 Jan 2025 20:27:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zqTP9GuBbFUq; Thu, 23 Jan 2025 20:27:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 879004257C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737664028;
	bh=H1E8Wes9soW48PyI/Kb+C/5aCj864k4EZ/tvYvK1Pgk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dNzovdyt8ecgSaR5JlaJBZBcdqhxAKiUiRTb4+qbFp79burHuAemuZRQvDUOV6chW
	 vSLOHOHh5DBup9GrR7bIc58sPNP4JZLCArhphLNELJKGPhAUV9lolhlHfzNS56QY4P
	 tHeVK51EA5oKay7GFzHYk0u/tvhtJARDe7V9uJy3emeTLf4Ribl1i96tH611V5CNnW
	 g1NAyDbE/UkAROgYptefZ2eD0eV7NOcp4nfVN/1qjAlKu3U6hvE/74cdk7XDoiFsLn
	 4fg2tH8B18GeHeQ4EgwTxYAOILB1XcIv78e693hZ3S+pIB4eLMiXqrhISKHIu4b224
	 gMjD/EacF1h6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 879004257C;
	Thu, 23 Jan 2025 20:27:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AEC51167
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4387D4197D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:27:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dI3Rl-0QQ6oY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 20:27:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1036; helo=mail-pj1-x1036.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 21657419D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21657419D1
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21657419D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 20:27:04 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 98e67ed59e1d1-2ef6c56032eso1942300a91.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 12:27:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737664024; x=1738268824;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H1E8Wes9soW48PyI/Kb+C/5aCj864k4EZ/tvYvK1Pgk=;
 b=k0SnNkXueCJgKDUp/ajepgFWC9U20yZ71oayVFqA1d+zhXwBq3jmf+GJ60Im3D7s+d
 P5uj4zbNMbzUEcqOs5vzM6wZfFmxdso/ughYip24sTrDD+wwiLNMo5AhmvCtHf3L7P5Q
 JIr7wLNCTOVg6yS6QSltQGJ4TlfR5t2qCWLMcBWD+JZxenvqFgWVDJM34xd6PILwDNW+
 GCbcYvQndq32/re8cB98ph89aFhHiXqRMH9XAwpgxX47Oslp1HRaS5lmv5qefIn3worl
 /rbRfWi1pdhmzMVU2pYNGuVmztdhpQgj86cu2JMhrL7uKxK2ptXM+MSlcKw1LK5ocbLM
 Xkmg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVhFCJUZcrNXi91g6A+GIYA/L2i746GuJgIr6s+2iA967RvSFBQ2P/aWeqPJ2/7IWm/D9Xjm2W0NdsGm53zVJU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwWce67BjlQOw1XO0OQowXpKAuo2kfHeQMON3EqEsyHR7sB+Wwk
 1f4a+klfL8Y8SXbX+GckU8+xSgAlStM3xeH0ZbKphsGYGKS5lK1oXzWh7FP6aZo=
X-Gm-Gg: ASbGncs/CPVUewMKs/NaBYMFsAOwozfZHcQIqkS37qbiwW0H1XuzllToSGy8HN8nupB
 yDAHieGXfgBLFRgacE4HrFbV5ytxaZj8+Qx5CpQg1QpZISOBMyW4AR1OE4M4/jp7Kal2FOR3KgH
 SQgm4NiWBgG2Yi24wV8Z0ejn/rvOdW/dmLH4rbe/gWf8tdMnevMZN+xoJnnBuADE13B4SJr26ip
 1taBGBukMUhfeI7x8kH7wM9wWDlkG1z45adhl68m0oH3VYFzLVHdJvWZs+11tfbdq+o0As5hM0H
 TgE9tvL0DqAdszHUzSoOWbQWuO02SlET3Hu4nWthFSvXhrk=
X-Google-Smtp-Source: AGHT+IF3uxjPwUFzQs8l1Xjs1kGf8hEf5axXZMU0HQEJXV+JRN1fGY1a666CyA83V1byq7axIHhQUA==
X-Received: by 2002:a17:90b:520e:b0:2ee:44ec:e524 with SMTP id
 98e67ed59e1d1-2f782d8d6a8mr38739569a91.35.1737664024336; 
 Thu, 23 Jan 2025 12:27:04 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f7ffaf8961sm124932a91.31.2025.01.23.12.27.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2025 12:27:03 -0800 (PST)
Date: Thu, 23 Jan 2025 12:27:00 -0800
From: Joe Damato <jdamato@fastly.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 horms@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 shayd@nvidia.com, akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <Z5KmFNz7HDm9itoC@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
References: <20250118003335.155379-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250118003335.155379-1-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1737664024; x=1738268824; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=H1E8Wes9soW48PyI/Kb+C/5aCj864k4EZ/tvYvK1Pgk=;
 b=ECiLu3cXqizOBwsXc4MIVMFuvghnwRMHTxSf43aEbbKyNyRgeMA+GI0MJID7Ff1VXo
 DYZYngczl8t5/jGziK0cKntMnBr+NTXJ7Y5UzN7yKdeJFIxjh2bKOn4m+Bgvz/O5IvwC
 /9WpvXi+685dFToBkz4PHH+n/uMEVEoMO4XEc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=ECiLu3cX
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/5] net: napi: add CPU
 affinity to napi->config
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

On Fri, Jan 17, 2025 at 05:33:30PM -0700, Ahmed Zaki wrote:
> Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
> after reset. However, since there can be only one IRQ affinity notifier
> for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
> management in the core (which also registers separate IRQ affinity
> notifiers).   
> 
> Move the IRQ affinity management to the napi struct. This way we can have
> a unified IRQ notifier to re-apply the user-set affinity and also manage
> the ARFS rmaps. Patches 1 and 2 move the ARFS rmap management to CORE.
> Patch 3 adds the IRQ affinity mask to napi_config and re-applies the mask
> after reset. Patches 4-6 use the new API for bnxt, ice and idpf drivers.

Thanks for your work on this; I like the direction this is going and
I think providing this functionality via the core is very cool.

I am hoping that once this is merged, a change can be made that
builds on this work to eliminate the duplicated

  if (!cpumask_test_cpu(cpu, affinity_mask)) 

that a few drivers have in their napi poll functions with something
more generic for drivers which have persistent NAPI configs.
