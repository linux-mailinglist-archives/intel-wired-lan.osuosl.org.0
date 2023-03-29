Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9F86CD41D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 10:11:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D717A61374;
	Wed, 29 Mar 2023 08:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D717A61374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680077466;
	bh=Op1bgwryIfUVa5mJa5wm/IA3yy9ZoKYO2Wv3K3kYGPY=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FZrP2moAn8ni52zZx1lAJ+rJF53IHp9JYNRCfjgE8a2+eozJZhcVJkzdBKdq97x2D
	 4FwMdnaIBG8JlELqzKwZnJYogQqbuuJ1rne5bw0iIFJnEqcJtAlUWo1FkeE75kK4MQ
	 REJdmjkV4wcS4QW+KirZGmgv8rwkPm2O1RlFd/ZzgNbxZuQ7iP70+CP4hLZWFx+oV+
	 AK6d0A40ewlZSDtc1HGw/YA9DnqnZlA7PWCiPuyeLmeNP1VGPbthXkvNqDkYPmcDP8
	 dgRjNy2/2KGkrHGhqjbv7TaNhab4P8HV/GEUwZmX1uDdlftB6KuRfp/tDrZsvSzYtm
	 tshHOxi79g0Og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IWDGoiJiOW5a; Wed, 29 Mar 2023 08:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 022BA60681;
	Wed, 29 Mar 2023 08:11:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 022BA60681
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C61701BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E4CF83F8D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:11:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E4CF83F8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YpIcfy77WYgP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 08:11:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9E7783F67
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9E7783F67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 08:10:59 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 q7-20020a05600c46c700b003ef6e809574so5715592wmo.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 01:10:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680077458;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=M/4t4OvCQjo33JGjobittaaxVDDegfvrkYrLpIGC83o=;
 b=Pm4bF4tVbuo1GA1HDMcmCbrDOHLStemGlO85X+Bd9fxANTVYm0YYUkcymLfkSkacMN
 xyUL01kxaox19O803dbGh46aFjznVJmwEFSYFrB6O9bphtM4KgubLcOWoAvajfpKb+rp
 12ToJpNBqS7Dhw/BwvRojzy5KPwgwnKPiM8RuqOf8lj7fLtkgTmUhRc/SlDd0Sr330b8
 CkVt4V8QpQOG81xcg8a5TA4Uhd50IaCliwL8rhJiggPIQdosqMtPGvi3VFbNp2KJwhK8
 yNRKGWPFv8hUAYs33CwuvGFe6wZFGsTbkL6Gth1EvMPKEnCMb9r0juunz3DnCUDKrw6S
 F3sA==
X-Gm-Message-State: AO0yUKVrN2HS3CzLVi/7bK4sGAjFJZpBShr87seCf4cBgvGpCCGp7QFm
 UWSIxkYYR/GCno4oUtIX0GA=
X-Google-Smtp-Source: AK7set9x9jFN4Plu2UmMtpejEnFrvn6a6z16+v/aEEdxK2Y8krzFM/wAHnT+KxPR01RzEqUm2SqdVg==
X-Received: by 2002:a7b:ce08:0:b0:3ed:9a37:acbf with SMTP id
 m8-20020a7bce08000000b003ed9a37acbfmr14013889wmc.31.1680077457916; 
 Wed, 29 Mar 2023 01:10:57 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159313-cmbg20-2-0-cust161.5-4.cable.virginm.net. [82.0.78.162])
 by smtp.gmail.com with ESMTPSA id
 s17-20020a7bc391000000b003edd1c44b57sm1323559wmj.27.2023.03.29.01.10.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Mar 2023 01:10:57 -0700 (PDT)
To: Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org
References: <168003451121.3027256.13000250073816770554.stgit@firesoul>
 <168003455815.3027256.7575362149566382055.stgit@firesoul>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <39543d22-4e71-9696-17f8-5ae22728aa25@gmail.com>
Date: Wed, 29 Mar 2023 09:10:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <168003455815.3027256.7575362149566382055.stgit@firesoul>
Content-Language: en-GB
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680077458;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
 :subject:date:message-id:reply-to;
 bh=M/4t4OvCQjo33JGjobittaaxVDDegfvrkYrLpIGC83o=;
 b=hc+I7GgxDJExRVT0qlKTaDwMBbzUxEWpa2RNLp2ERtN3JnGBdLEc4s2KKx10imXy7T
 84biQJEVomdzXbuWYOqtylvbdglKk/PurgFmvuvRi+AzonLKfjTNGTzl8Q2Tl/YyY2jX
 gEKsd49ue3Q7WYjLNmwQO1AFMFXXaoXZOXXuaeCETn4MFeHwaFGy/ujWpJ+F1TCpxo3y
 S2S/WJMXl6mta4slX9JM5KeDEPbb3mNDEOEl39fgJblRKIGEHMlx7Ui2g9anMzdNbRIL
 wvtOs/VJpCiDiGqFXvkIz1MYsHTjCVOVdbRKhgm1NZKM7c6xQxQo2tGXhbmubxbAjGes
 HRVA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=hc+I7Ggx
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC 1/4] xdp: rss hash types
 representation
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, edumazet@google.com,
 pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, kuba@kernel.org, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 28/03/2023 21:15, Jesper Dangaard Brouer wrote:
> Hardware RSS types are differently encoded for each hardware NIC. Most
> hardware represent RSS hash type as a number. Determining L3 vs L4 often
> requires a mapping table as there often isn't a pattern or sorting
> according to ISO layer.
> 
> The patch introduce a XDP RSS hash type (xdp_rss_hash_type) that can both
> be seen as a number that is ordered according by ISO layer, and can be bit
> masked to separate IPv4 and IPv6 types for L4 protocols. Room is available
> for extending later while keeping these properties. This maps and unifies
> difference to hardware specific hashes.

Would it be better to make use of the ETHTOOL_GRXFH defines (stuff
 like UDP_V6_FLOW, RXH_L4_B_0_1 etc.)?  Seems like that could allow
 for some code reuse in drivers.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
