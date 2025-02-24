Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 480DAA41FD9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 14:03:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 272C6810FB;
	Mon, 24 Feb 2025 13:03:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m8fbtxgUbnty; Mon, 24 Feb 2025 13:03:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76543802EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740402233;
	bh=QeA0rVRWP3AOYIIlnfHopPlLG74GJ9BReqcR5DIAZMo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dwOgHNOI8Jv6dKNWUYNPiSZUm7LSArItbgIzBF9M51mIHj9RvPtBMYraliM5lqZbx
	 40ASi6AIB7YYxXxQTDSiQI09CpXKNSIH8NVJbJh7vUFTEwRvmBKZRSTq4XUNNDsXP9
	 FkZSeMyQCC7JnRAMpnSvpMptT/jP5O8QMpUYxYzGsfoXAlix9UZWzlCuCnAdycANKF
	 P5aXMBLWcbx4r24LAt30YVZLmqbbdPE5GQgyibm3GVRv69CoRv5+AdzglxrwR89OeR
	 UMjQP01XHanJpVAtT8f/IzhKGkJGBbMSPYNKw0g8ekywLXRZJmp5iHwO8HTpR4bYbt
	 JFSNKDNf4VU+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76543802EE;
	Mon, 24 Feb 2025 13:03:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 07132943
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 13:03:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9AC34062B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 13:03:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bnOt3GasfY3I for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 13:03:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A36AE4063A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A36AE4063A
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A36AE4063A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 13:03:46 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-4398e3dfc66so38467645e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 05:03:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740402225; x=1741007025;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QeA0rVRWP3AOYIIlnfHopPlLG74GJ9BReqcR5DIAZMo=;
 b=uVW5R77tEwgLBWKXQMULvb1FkCaXGo6QGXtB935UXVQp8TRWDeXg8NZUOZT59lB/W3
 7Bo3LdJUssvS//vYTFSQTTXtyViDyjvvUnu4pz3HeTDIZq6IoagUK5tJNlrOM3CULXkT
 TVTwQMddU8WAcSlmjZK24/1UaW8/mfP3PsEZeAsyrmYLKl/1KViL1xIb6Oxy6fc3m37v
 mAuRHLJFYRs8N/HKAFLD4AKE5xdpvUh+Fo6SzUSjsjXQdWWoku33sJARMc10QrB8vflH
 81XVchWe1u53ueYvXs7xPC6cdNmHBCOz1NfJq/ao8LF30ipNec16rUV3LeS8HIgA6cTU
 e24A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXd9nGK9WKIWbxUnNveX67Qny14Fw+2ProqkotIj0M+4xb3lsv5eY+omWUbH16Rzx43MwInTiMMjIzLu3+ZhG8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw7gYXio6O8sN5Hy4T4/IG5A5ru0R6OiHl8cD6SEWXx9R4j0SBM
 U1s8goFP85WsA+LUFL2Q/2nphwxD6zR64lcdDSGIa10CjvJ2cXP5ayZvWaakZVw=
X-Gm-Gg: ASbGnctPyNbGNLvNtRv0Ta9cdHAfX8dWYFYIqM6waq/L6Jbh2NYsYA//CMnoMcDohDm
 CUZoII1bIFfZ2KhL/uE8ymHncHMEPjVZUSpE94M0ddu3iq7mrCWS/aoG8aU8bCRJTGYGX5Y7QnV
 Q5jGCymCMEljm+bmfaPRZL8jfBKQbBm3tTm1RxIXL0nIBpPiwqfef2t4QZa+FmoorgAxRrf6h+3
 mMjRyJoqVoQlH9ZWbTJ6/FEWES9a7O2EjF12LQT2eZzPSL2grMFfauiH/sn2kM+XnJhx1xtO62h
 0THrj2OeOmLcdMay+roAwwk86prtpscHLdgM2IGSULugcpAbQhFw
X-Google-Smtp-Source: AGHT+IGyB/Rgw0TqA7SsSI5QTcM2agQmllOnJHqgIfcTjpAlHrZGdn38+03L9In2Tf+ef6DQcvVmpA==
X-Received: by 2002:a05:600c:1552:b0:439:8185:4ad4 with SMTP id
 5b1f17b1804b1-439ae22124emr98618985e9.27.1740402224568; 
 Mon, 24 Feb 2025 05:03:44 -0800 (PST)
Received: from jiri-mlt.client.nvidia.com ([208.127.45.13])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4399c4df982sm135831435e9.1.2025.02.24.05.03.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2025 05:03:43 -0800 (PST)
Date: Mon, 24 Feb 2025 14:03:39 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, davem@davemloft.net, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 ITP Upstream <nxne.cnse.osdt.itp.upstreaming@intel.com>, 
 Carolina Jubran <cjubran@nvidia.com>
Message-ID: <wf5ugq4h4lv2uic3622xurjbfwf534gj2jx6jbhaxoncingb3z@ceo4xkikjbdn>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <20250220174512.578eebe8@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220174512.578eebe8@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1740402225; x=1741007025;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QeA0rVRWP3AOYIIlnfHopPlLG74GJ9BReqcR5DIAZMo=;
 b=UioYq1Qmk3yQBHefcA6A58XTmx4JnBkZ7EAa6EsBhNrdjtvE7d6neEStSccGJm8UwQ
 FRpzu4A7Wsh12eqjuU0vc+WCeVnbwJqzUQOCacKAnojhrHDfAzsh9TpbdKUwafc8oYJS
 tbTKlN3p7YsPhdYP2j0EhMWb65QTePHnxnBup74/IOvSe2ERiPwGcZ4RJnBDzWphOTGO
 VcdYXYDlmBLiqJMtvx+iC3O+WWuvHIXLbCoX6wy9U4A0yO8lyW917m1KEelFQX3VVo9t
 oFgsG7pHf/Q+UNK5e0fjjVjLPihton+wIVIFyeCzjEvUg/ZkVgRxiE788OrMbxptL44C
 1ktg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=UioYq1Qm
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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

Fri, Feb 21, 2025 at 02:45:12AM +0100, kuba@kernel.org wrote:
>On Wed, 19 Feb 2025 17:32:54 +0100 Przemek Kitszel wrote:
>> Add a support for whole device devlink instance. Intented as a entity
>> over all PF devices on given physical device.
>> 
>> In case of ice driver we have multiple PF devices (with their devlink
>> dev representation), that have separate drivers loaded. However those
>> still do share lots of resources due to being the on same HW. Examples
>> include PTP clock and RSS LUT. Historically such stuff was assigned to
>> PF0, but that was both not clear and not working well. Now such stuff
>> is moved to be covered into struct ice_adapter, there is just one instance
>> of such per HW.
>> 
>> This patch adds a devlink instance that corresponds to that ice_adapter,
>> to allow arbitrage over resources (as RSS LUT) via it (further in the
>> series (RFC NOTE: stripped out so far)).
>> 
>> Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>> PF0:		pci/0000:00:18.0
>> whole-dev:	pci/0000:00:18
>> But I made this a param for now (driver is free to pass just "whole-dev").
>
>Which only works nicely if you're talking about functions not full
>separate links :) When I was thinking about it a while back my
>intuition was that we should have a single instance, just accessible
>under multiple names. But I'm not married to that direction if there
>are problems with it.

I kind of agree. Like multiple channels to one entity, each labeled by a
different name (handle in devlink case).

>
>> $ devlink dev # (Interesting part of output only)
>> pci/0000:af:00:
>>   nested_devlink:
>>     pci/0000:af:00.0
>>     pci/0000:af:00.1
>>     pci/0000:af:00.2
>>     pci/0000:af:00.3
>>     pci/0000:af:00.4
>>     pci/0000:af:00.5
>>     pci/0000:af:00.6
>>     pci/0000:af:00.7
>
>Could you go into more details on what stays on the "nested" instances
>and what moves to the "whole-dev"? Jiri recently pointed out to y'all
>cases where stuff that should be a port attribute was an instance
>attribute.
