Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42607C4E871
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 15:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8443340942;
	Tue, 11 Nov 2025 14:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Jf6ZflQ9bZH; Tue, 11 Nov 2025 14:40:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 044A740946
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762872025;
	bh=qp5l9CleBH+90IDb02IwKlf8FOy6cwp5KCYKsO335Ps=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=epWPx/IJ6d/+CVPFHD55RyRWFi7lAPqQTLMGx6OY8E3OM6IhmuelrcukEeReRTT65
	 Gt81XeW0MUM0AQzPtnNcO/Ndzf7gQiD8BSbCZEkxvRYTFrk6vDgm1tyL25b8qzvvsr
	 znWVvOYGGFG/FiaiODfTfA1b+VouU6IGIf9C8DJaWY6Q4243sLWKwlflwV1KeJPF7o
	 OLpWYmsnJiWk+Q18NEnCkzcKpDF0NR0oVk4KJMB0M6ySmLjNPso19isFVBHbXF820M
	 o5wljg34P/vz0RbdQ7LezWyGAbzm1fJpcNj86I33A6qU/6iYxHPlE/sFtZuAfW8UOF
	 xob/W9jzMIXeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 044A740946;
	Tue, 11 Nov 2025 14:40:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7586831C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6766260BBE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:40:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P7LCZPDkWXDh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 14:40:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32d; helo=mail-wm1-x32d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E7F7560BB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7F7560BB7
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7F7560BB7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 14:40:21 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-47112edf9f7so20512905e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 06:40:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762872020; x=1763476820;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qp5l9CleBH+90IDb02IwKlf8FOy6cwp5KCYKsO335Ps=;
 b=b4fUzcGXpxAUTYeCBVMwGCl9blpICaCryzEUszQk3zCrJhEzUMKpS4fS1NLmMlL16M
 TGk6Xkd5RF3CwTcHkNSgDbXQ8nrTuDf6u1dhf8j6Xuw62K+wHXaDUI2DjoPIQ3yZxjaK
 iSyM7vohTmMFjjZLa8rvirXVkumjjM4ZtiFDBwA6G5lkgm5CGdWul/IkBRk4Kkt0kVM7
 XYGiScdeHMezt69Fod5Q3b0+j4Z2NBJThZmTaRGPpqpSyTmsc6NmcRd/UK5b9eh60ltK
 vlr9REmsYfN12rqAYSki05F+YcYbm6hjDK2bNFUQrcDumn6VZ311JNYRd1DO/HMGVX80
 2O6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVQ94kLu7eJmS2jZJeExY3w9u1A+9XkoBSS/h99TUScUEJuwO4Mi/IrfPOHe5dijhAIqcnp3+NwSbaCHBXlkx4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzqtAI6k9rzN4jcnb7MOaA2hAz5RcMvyT9hhan56Nl/vf5Tlzd7
 Th1feZUaCKxeIeAApDs/aC288LpWFFYKtJgvU/UnGYBGKZOIWmN3MxSql305e3QthoQ=
X-Gm-Gg: ASbGncvwM52V2loIKhIyWwxAEsL4gM0+X6y3vekHTDdzvZuLh1TXJB2Cx0EVieAl4bP
 vkX03DTvCK8CUO1/NttOcRzBMAsfeOXWWxoDt4cwa25WAmx1HaMT7bczsQlyovaE6m/zOe+FZ8g
 BaDLs+1k9g+qpCBxRpgc/UDmF0JaJqVrwKH7c9pdyWEORY4Zqnl3uthy7c35IFtR+ZxlbBmpQdO
 CIbdT0IHHIfo4hu13TwQjke6z0iRQ20q5P3tbnWT1mDKQNf636lHKOzgNUz7aGtt531bmeQLcgc
 kppSRM3FkEIqbDLLLNCzOw1NUfs4g3N0IXywMP3T8IZsByl7EAeHZC50eawdZyuddsdRyxUfPGw
 CkWI42zX/wM9NAWDejDgaeDqYLipJpqwZhFj0Jp4BJv6C/iPGw/epio3mQa3cbAOyt5fRVydHZs
 Hkc7JA5zwh63p5Rkwhl1A=
X-Google-Smtp-Source: AGHT+IHiizBIJOZcrq74AaefcmPGJqcFfS/u1VH/cPNz5auadvSnqgCV70GeJMtA2paFsPgExMwhBQ==
X-Received: by 2002:a05:600c:4508:b0:477:7bd2:693f with SMTP id
 5b1f17b1804b1-4777bd28628mr69798945e9.6.1762872019298; 
 Tue, 11 Nov 2025 06:40:19 -0800 (PST)
Received: from jiri-mlt ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4775ce211d8sm392840305e9.11.2025.11.11.06.40.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Nov 2025 06:40:18 -0800 (PST)
Date: Tue, 11 Nov 2025 15:40:15 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Daniel Zahka <daniel.zahka@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Srujana Challa <schalla@marvell.com>, 
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, 
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, 
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, 
 Tariq Toukan <tariqt@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>, 
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>, 
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org
Message-ID: <xmqe3svfethqm3sqnu2ay27k65gx4njptvs7firsfqn57cwjat@ho3cox3ip2fq>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
 <mfuluoi4nebyc4avj52gkfs4nqikn6uwhqnkf4o6xfswtpceuq@zhpokcx6bb6l>
 <25ebaf18-f009-45de-a3e4-fe440c42ef19@gmail.com>
 <20251110145831.15872b86@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110145831.15872b86@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1762872020; x=1763476820;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qp5l9CleBH+90IDb02IwKlf8FOy6cwp5KCYKsO335Ps=;
 b=uL5LG8F9FFoog8NJBIXtnHVRZ4RtSv3GxmTGQ+b1DXoPpKiBvfqidjmFrXAg15wM1l
 Q9A/Hw+PN9GMKS7TGDSfUHvTDG/a7XsdA7DHMI1PiQbV+nAIapWnwiDKrI0PTLxuH6ff
 QG7DiOvPPHWZbjJYer/T9Tm9eHZX6qtw4QLJDPhn0YMyc7cwc2lCb+F6LDyxfybcd7Ri
 uacqtvmd6cD5Ah7K+4akMOVX3xKWNhzRcGpiqwmOcnmhbnFojCdA0l1TRYHZyEiJ3PBA
 hgB/wOcMXrJv3WVuIGWW2Qd99kBV4DNiO7do9m+cZwdLmLIGL2MtsUTfAFce1+j4HHA/
 aSWw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=uL5LG8F9
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: implement
 swp_l4_csum_mode via devlink params
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

Mon, Nov 10, 2025 at 11:58:31PM +0100, kuba@kernel.org wrote:
>On Mon, 10 Nov 2025 08:05:57 -0500 Daniel Zahka wrote:
>> On 11/9/25 5:39 AM, Jiri Pirko wrote:
>> > Daniel, I asked twice if this could be a non-driver param. Jakub asked
>> > for clearer definition of this know in that context.
>> >
>> > Not sure why you are ignoring this :/
>> >  
>> 
>> My apologies. I think there was a miscommunication. I assumed Jakub's 
>> question was directed towards you. I have no objection to making it a 
>> generic param; I will do so in v4. It sounded to me like Jakub was 
>> wanting more information on what exactly this setting does beyond what I 
>> was able to provide in the commit message and mlx5 devlink 
>> documentation. My understanding is that this setting pertains to tx 
>> csums and how the device expects the driver to prepare partial csums 
>> when doing tx cso. I don't really know more than that. Especially not 
>> something like what the FW's role in implementing this is.
>
>Right, per To: field of my email I as asking Jiri for clarifications.
>
>Since we struggle to understand the semantics nack on making this
>generic. Chances are whoever reuses the "generic" param will have a
>different interpretation of its meaning, so what's the point of making
>it generic.

Okay, I don't mind that much.
