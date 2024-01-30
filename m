Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 364D3842052
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 11:00:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8771B41B0E;
	Tue, 30 Jan 2024 09:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8771B41B0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706608799;
	bh=iGFZG6Vv2L0Ln+RrUvTqGZS//mscD/cz+Ku1owLkkI4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CT3uutza33vHFJiBVsEA0jwyCpGBbBZ7vQ1tMljVStUFRApZbVdOBLGVIfEvZZalv
	 KCTMVdNIj6jc2FLJc9N2K16FOtt3grDiP+xcRkTI8VR5w6+IdW1s5m69sEs0dJIL33
	 zZqn0EHHsXGZo0X+f3D1rOqLKrkaG7Kgr7bpJ50ngjVIKSgo59j9LD/vdjk55LdeEn
	 7yg6q+DJ1hUPClFusp994kb3ZC5wdfWgePXB7GcEPYbZv5MxYFCV/SJtWvuKuhmgFg
	 Psc2Sjf8+tc3CQYKmrVt6m8UF/QGXkSi2iGPynrLGY+08jNuEjbrpD9zp6558+B4nj
	 fZKaEIsyvoJhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPoGgDfIT73D; Tue, 30 Jan 2024 09:59:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AAD641A46;
	Tue, 30 Jan 2024 09:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AAD641A46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E57831BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 09:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C765C41A39
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 09:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C765C41A39
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0LJV3GwzCSWg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 09:59:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A926C41A32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 09:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A926C41A32
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="393662040"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="393662040"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 01:59:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="911388471"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="911388471"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.34.225])
 ([10.246.34.225])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 01:59:46 -0800
Message-ID: <92958c7b-7e5f-4e25-819f-4e52f9ffcf7b@linux.intel.com>
Date: Tue, 30 Jan 2024 10:59:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: takeru hayasaka <hayatake396@gmail.com>
References: <20240127140747.905552-1-hayatake396@gmail.com>
 <154f979e-a335-461b-b72e-5e9c54fe940c@linux.intel.com>
 <CADFiAcJShbgBLXdVgs1vK1jqDFopkRcw-se4b4h0V3Yd60xLVw@mail.gmail.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <CADFiAcJShbgBLXdVgs1vK1jqDFopkRcw-se4b4h0V3Yd60xLVw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706608791; x=1738144791;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6P5FfbFKXvpTVgfjV2JFIycWosCzugB7elVDu3wefxI=;
 b=nPHfBZJG1kw4TxyPAx+BJReQtlMBJCyo2M8ZUJXATbhuN13eD0Gqykf5
 20JZYfhVN0T7mSkAKzxYrJ+0EbxOA91FIln4cnBe5lLr9pQVFZTdz3FtK
 wlsj4bFeiNfWQmSwruWwRnHDpPWX6VUVggjRJujuy9mkz6UKl4atBfg+W
 R3z2BfYHFEnvJ2c7DOwQIFxaWd9WLAK3L70BFJtWeNgR6S4BtdKu0s0Xn
 GPVdJuskmHJGCVB7xOdm6j3+FHljvarYIiK6A06t+UqXkhXppFh/ckHCO
 nTn5y0y/s89wNy51L9TlgmR/hV56LK9Fqk+XVazIQ8SB6eRJiPhTlPJ9T
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nPHfBZJG
Subject: Re: [Intel-wired-lan] [PATCH net-next RESENT v3] ethtool: ice:
 Support for RSS settings to GTP from ethtool
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
Cc: Jonathan Corbet <corbet@lwn.net>, vladimir.oltean@nxp.com,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30.01.2024 07:39, takeru hayasaka wrote:
> Hi Marcin-san
> Thanks for your review!
> 
>> Do I understand correctly that all gtpu* include TEID? Maybe write it here.
> Yes, that's correct.
> 
>> It would be nice to see a link to the patch that added GTP and 'e' flag support
> to ethtool itself ("ethtool: add support for rx-flow-hash gtp").
> I will send you the link.
> The one I sent earlier was outdated, so I've updated it to match this patch.
> https://lore.kernel.org/netdev/20240130053742.946517-1-hayatake396@gmail.com/
> 
>> gtpc(4|6) doesn't include TEID, so what is its purpose?
> In GTPC communication, there is no TEID in the CSR (Create Session Request).
> Therefore, there are cases of GTPC that do not include TEID.

The way I understand it now, this patch (and the ethtool one) adds hashing on
TEID field in GTP* headers. So I wanted to ask why do we have a case (gtpc(4|6))
that doesn't include TEID? Do we hash on other fields in this header?

> 
>> s/TEID(4byte)/TEID (4bytes)/
>> Also, I think two newlines should remain here.
> I will correct the TEID notation in the next patch!

Thanks,
Marcin

---8<---
