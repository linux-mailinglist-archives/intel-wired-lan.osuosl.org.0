Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C8E7FA7AF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 18:10:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E7E14086F;
	Mon, 27 Nov 2023 17:10:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E7E14086F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701105049;
	bh=j8LT2zzdOotBUXbKEjkbHv+THbQBU1cwbHpbkiF1T+Y=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5AtXx/lPcqPCEytlSLedPQZ94IcVWPzyfsJ77JxOAA25/Gip4jYNwc44uxzB52Dm7
	 BDCs5pgCt6LXDdHKUlkLPzQQh9XkzMaBCPMwUA7jOSRY+Livzm26qb16PUQvOSyane
	 GeQpVn0uMm4GAtigENSbrWwowc8SgsKHdl3EGEzkHel1qCKazvkyvKMW5IyQk/kDXc
	 vc4reBBFl+s10IrhSyzVyUE2CsCElNO1hbQu2R2vSpyZM86sTAaNQ7sAFm1ncs/EJn
	 o2xzcRCWZDYfdeTQVt2MFok2P5/MYQN8fSi9qPLBALECm8aVDFbQbjM3ootGDn+wgz
	 tzk81g4hNbH7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuaDySSE5DW7; Mon, 27 Nov 2023 17:10:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 598744030F;
	Mon, 27 Nov 2023 17:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 598744030F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D7F21BF860
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 17:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 53401405E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 17:10:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53401405E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkJ4bR_D2iU2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 17:10:42 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B19E1405D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 17:10:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B19E1405D6
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-40b4a8db314so174655e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 09:10:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701105039; x=1701709839;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZawHlo7ihhM3P7f9lODEcARYXH4Ryf9ttNMsaPKDZC0=;
 b=ZemLmCE2EIASONyUas80Y7728IdbdAwbn6QhKlsOyzWdKj1kUwDRfEPkwee6XC+C7A
 rHeY9BJnI/Ut/5gL4aV5yWDkkUlJPRe2nsUeuzd+L/ZXBXXsp/AkmmLdrXINTOZP3Opk
 3vxnWwrV7Bh6pmArmzzefvlV4K7QC471GmCd827MTckt5GUns7U2Vxm/qjyvsuRNQowS
 JLlSjZu5LX2Ka7tvk6F0/jNvzDZMih3IjyJ1N7My/Wg2d5Mfh2yAZyIItRtryZohOUFA
 CoDvTZuVhxJ7XPbTm1Oqu6gneXSlAFcVBOuKb27OKURH+nsb5Zopa1rhNTO3O4585ZuK
 Sdhw==
X-Gm-Message-State: AOJu0YzKCaVpUMzI0QZ688MKGZO313l0lqI3DHo8vzd9R8efXdW5sliY
 blgLLCJQOl4klIwkjUAMnQM=
X-Google-Smtp-Source: AGHT+IHlqMryunqFzONkDzsQFOB5kDNnfitWeCTrN8xajEwOus2AtFtoco9WJWnQMWq1yvnHkERF9w==
X-Received: by 2002:adf:f48d:0:b0:32f:7901:c462 with SMTP id
 l13-20020adff48d000000b0032f7901c462mr8879689wro.3.1701105039278; 
 Mon, 27 Nov 2023 09:10:39 -0800 (PST)
Received: from [192.168.1.122]
 (cpc159313-cmbg20-2-0-cust161.5-4.cable.virginm.net. [82.0.78.162])
 by smtp.gmail.com with ESMTPSA id
 o3-20020a5d6843000000b00332fd9b2b52sm4700440wrw.104.2023.11.27.09.10.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Nov 2023 09:10:38 -0800 (PST)
To: Jakub Kicinski <kuba@kernel.org>, Ahmed Zaki <ahmed.zaki@intel.com>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-2-ahmed.zaki@intel.com>
 <20231121152906.2dd5f487@kernel.org>
 <4945c089-3817-47b2-9a02-2532995d3a46@intel.com>
 <20231127085552.396f9375@kernel.org>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <81014d9d-4642-6a6b-2a44-02229cd734f9@gmail.com>
Date: Mon, 27 Nov 2023 17:10:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20231127085552.396f9375@kernel.org>
Content-Language: en-GB
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701105039; x=1701709839; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZawHlo7ihhM3P7f9lODEcARYXH4Ryf9ttNMsaPKDZC0=;
 b=Yek0J7w9zrX7buUJNMSrgjJpqtwz2crshvfBOMHb9mQ7FJC0O/DgJQIRESdqsxLcqO
 QWq3kQQHzp/jSnAfMoyYZ3AvGH/SLgLxtoSZdZBbxsEL0fsV4gTdXGvl1hD3guRiqWgu
 fORQCZo4/hjj7D6EPCLk9yxTYHHA53L1XkzPcAa6rhHJkAv+ZVAM02zU/oczyhbh3AZg
 LkKRM/EEyH0q2JGZPGr11llCwCOzf8oQqF3WMAkaYpTMQOHMCawYc+pmZKDkrXdq9OIZ
 0RoFQ3L3ohkObOYnNGHtj+gdOhIRLzH+r2I/GS4G4Ba0SdksjMjLh8PovEO6zHIZlIL4
 /ZkA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Yek0J7w9
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/7] net: ethtool: pass
 ethtool_rxfh to get/set_rxfh ethtool ops
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, netdev@vger.kernel.org, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Igor Bagnucki <igor.bagnucki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 27/11/2023 16:55, Jakub Kicinski wrote:
> BTW, Ed, this series will conflict with your RSS context rework.
> Not sure if it is on your radar.

Yep, I had noticed.  Was wondering how the removal of the old
 [sg]et_rxfh_context functions would interact with my new API,
 which has three ops (create/modify/delete) and thus can't
 really be wedged into the [sg]et_rxfh() like that.
Tbh I'd rather move in the direction of using the new API (and
 associated state-in-core) for everything, even context 0, so
 that the behaviour is consistent between default and custom
 contexts for NICs that support the latter.  Not 100% sure how
 exactly that would work in practice yet though; drivers are
 currently responsible for populating ctx 0 (indir, key, etc)
 at probe time so how do you read that state into the core?

And I promise v5 of the rework is coming eventually, bosses
 just keep prioritising everything but this :(
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
