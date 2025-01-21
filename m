Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD3DA17F2A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jan 2025 14:50:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F717413C2;
	Tue, 21 Jan 2025 13:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cbmnqsqKgLZW; Tue, 21 Jan 2025 13:50:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8BBB41234
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737467431;
	bh=vG50rxpHrJugvxAxIhPDCM0UI0nXxZum4EQEHShr8Sg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hLt69Kcu6GM/t6/2fqJXyukfTKr3EJsZwNaTGrDDTOuPo2hAqKeuq5vGSR5ZyHi0Z
	 wdLvthLTix7QxrgGgYh9y17TvK9R169YhYohSDn6xORFEShDUFbDRVo4M87w7EbwM1
	 Pddwe0L7/oah8cpPjkBlch2DCrnxzvrtUZsJPlLb1KaBOuo1/xH/TpXC6AKTVSkyxx
	 pb0OzPfUz+QfMUt1FUNDQa/mmivMAVPHrQstReOQ2QP9efiA+yOuYLIAerOtueSaf0
	 9rS9w5kLvjabVHBzUUOKpneS9Vwc3mh1H+RnntHQWbRJ/cJjVV08q5XvjKVBWplo/7
	 8RXqYsx2qbKPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8BBB41234;
	Tue, 21 Jan 2025 13:50:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AC74BD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 13:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89E8441095
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 13:50:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hEloo-rcWjKz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jan 2025 13:50:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102d; helo=mail-pj1-x102d.google.com;
 envelope-from=dheeraj.linuxdev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C28DF41083
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C28DF41083
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C28DF41083
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 13:50:27 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-2ee8aa26415so9629939a91.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jan 2025 05:50:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737467427; x=1738072227;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vG50rxpHrJugvxAxIhPDCM0UI0nXxZum4EQEHShr8Sg=;
 b=Q6K6/P6CEmG1o2VjEdBrlVu6sda01sRVEh8WQP9k3v9GZmsBydVg4bzaY8QBuXjRa7
 yfAkzy8Wl2hpqhcJr2FWErYMggnYWz88RYR6+Bn+zicSmGSDjCvNhhzQvnnRqxFOq18b
 dpF5oAiBWL4aCjt5mlxyoQ6Ls2Vl6+pw0WwgKCd5FaR/NYXLGnR22ElO2Nuso3xF2EMj
 ytp/NDMJ3tQhSARTsh2GcXMOHNuJTmv2eUmVJqrFzt/Y7lVcnCF4fJq/BMj6iadsehcI
 YiZETQTOocfAC/qCg0Noi7mB/oGMeJuHGdvG0qlKebOrsZCzzR4g6EpSz1YNev57zuB+
 3wZg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUtwnr1w0+l6pKu9RXQdAb+LZ1p+H0SNJM1V00xwVA9zZk/k26hp3NioyJw0ogEq7vnsdTWoH+94mOeGF5A8M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwNyjdC6fWCuGGc3vLdm/rFY3lgvTHTL2xo8l5UapESUHV/5u9F
 iYry7Rh5zdDvk4sRr6CJcovoZcWjG5DcwafurbRkjCfhRblDCE8u
X-Gm-Gg: ASbGncuc54HxO/DhgiNH3t15FDdwYGjL0i8k934B5NngKtVFfBNbYGadhTCe7Ru0nBb
 Vfbi0HkpO7Y3VzHmzohdfF9xu4Ka8smRgjpf3RrGVJwntL7rQm47WafCiKTxeNYbJIfxmceKAFT
 Wb4I1BkZJIMRnZnK6qeTMvndq7Lk+fak9Iorp02sHBeP1mtDCPL81T8/14g7GYfHW30S72MZHov
 OAWFtXesVAunvMkFTIWYCa7WGF+wWsWAgsGiNAaxEeGSJUSgSRlhUVEzvWb7/7axM3XZMeaNg==
X-Google-Smtp-Source: AGHT+IGt9998Bygq9uoW7YN8PkN0KrPx7K1Vo/TqAl7CuWy+dD5Cx5aGSGpWfh1fBmtBGsdnEPyUUA==
X-Received: by 2002:a05:6a00:4c18:b0:72d:8d98:c250 with SMTP id
 d2e1a72fcca58-72daf9a5535mr25259429b3a.4.1737467427037; 
 Tue, 21 Jan 2025 05:50:27 -0800 (PST)
Received: from HOME-PC ([223.185.135.17]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72dab8157f3sm9291546b3a.55.2025.01.21.05.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2025 05:50:26 -0800 (PST)
Date: Tue, 21 Jan 2025 19:20:23 +0530
From: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Simon Horman <horms@kernel.org>, michal.swiatkowski@linux.intel.com,
 anthony.l.nguyen@intel.com, piotr.kwapulinski@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <Z4+mH7s/YnfdXgJ5@HOME-PC>
References: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
 <20250116162157.GC6206@kernel.org>
 <fe142f22-caff-4cab-9f6f-56d55e63f210@intel.com>
 <20250117180944.GS6206@kernel.org>
 <e3aebbad-42ec-44e5-b43d-b15b9cd0a9ad@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3aebbad-42ec-44e5-b43d-b15b9cd0a9ad@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737467427; x=1738072227; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vG50rxpHrJugvxAxIhPDCM0UI0nXxZum4EQEHShr8Sg=;
 b=aJc6OHNz5SYKPJNrjYtbnMUYWTHFOZQrDdH/IWqF0LqO24GgLDqQLbZSer2ld87Pmv
 mK1HXozjV0XTQVlT8daQQ1vY+Gn+Y+VEO/g9+K38vX2cHPi2y4Cd6omqKW8WmjkgNQ2C
 2CymSxJxZtZCfKOkdTe28kuxh+PDzZ7DiUbK+Vh+gzsuX77T61j8P1iybh9KkjzM9yyA
 nNcc11myRP3k6+ZWrGNX1xqXvr4hUXOB9EpMGc9TpXLI8+4weH6mJ0rLBFORExOH2q9w
 Ttvudvmmd8CTo2L0uXDe6oft4STuNlBJwc8z98Cb9mF1krQer7y0juxv/zupG18/nMMN
 sQhg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=aJc6OHNz
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: Fix endian
 handling for ACI descriptor registers
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

> 
> @Dheeraj, do you want to hone your minimal fix to avoid sparse warnings?

Sure, I will update the patch to avoid sparse warnings.

> follow up question: do you want to proceed with a full conversion?
> 
> @Michal is going to send patches that depend on this "full conversion"
> next month, so he could also take care of the "full conversion".

 I don't mind sending a patch with the full conversion. Although that
 would have quite a few changes. To clarify

 1. Are we updating both @reg and @value to be __le32 ?
 2. Should we also update ixgbe_read_reg() to also handle and return
    __le32 values?

-Dheeraj
