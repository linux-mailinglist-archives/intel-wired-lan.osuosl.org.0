Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CB94C43E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 12:48:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A47940352;
	Fri, 25 Feb 2022 11:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wo0rvBEk6M0G; Fri, 25 Feb 2022 11:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 661D74042F;
	Fri, 25 Feb 2022 11:48:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C0091BF34C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 11:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34BB561240
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 11:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b5kbQER7VCMv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 11:48:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96D3760B77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 11:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645789693; x=1677325693;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zH4b+OPsc/eRXIFFSyTGqOkoK5ujPq95ixybsZet6EQ=;
 b=U1zZ4DSprtfHd0kV0Ac5CRP6kHPQ2F4z/7FPKZoc5lKaJtn5osSEzwqJ
 L/4PUA1RfvtDzK7CixVL8B9FwhY2ht+JbA2XROgD8Gy9qNT6dQzOeO5Nn
 ZydunXprENWe+PhlB8LhY7v256s5bv7GPOpbt4eQaPVV9YHjHff/SOBDe
 eowOWgF1Ve7E26gEC+86CYNL5FcLbuWiG+QjHt9rIkYbyj0XZ4xcHbSRh
 /Ku6V6NcO08D62P8bqxEkEPcWwxngnrP6OOMDPVX7bRVEAo0NPFjdB+Tm
 OPzkXKYs9t11twYBg1BHS5d7+Uayjxn4OKht37u02/+TbfVCA19fVCuHS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="338918003"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="338918003"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 03:48:12 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="549231300"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.159.102])
 ([10.249.159.102])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 03:48:09 -0800
Message-ID: <f11878c1-2486-b777-9701-912b048e5f0e@linux.intel.com>
Date: Fri, 25 Feb 2022 12:48:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Harald Welte <laforge@gnumonks.org>
References: <20220224185500.18384-1-marcin.szycik@linux.intel.com>
 <YhgKO8rdxMxclZPm@nataraja>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <YhgKO8rdxMxclZPm@nataraja>
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 0/7] ice: GTP support in
 switchdev
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, davem@davemloft.net, pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Harald,

Thank you for reviewing the gtp part!

On 24-Feb-22 23:44, Harald Welte wrote:
> Hi Marcin,
> 
> On Thu, Feb 24, 2022 at 07:54:53PM +0100, Marcin Szycik wrote:
>> Add support for adding GTP-C and GTP-U filters in switchdev mode.
> 
> For the changes to the gtp.ko driver this v9 looks fine to me.  I cannot
> comment about the switchdevs bits, those are beyond my expertise.
> 
> Regards,
> 	Harald
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
