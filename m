Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384BE26A1BB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 11:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF18487100;
	Tue, 15 Sep 2020 09:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A+a5h30xoGyt; Tue, 15 Sep 2020 09:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19CFD87119;
	Tue, 15 Sep 2020 09:11:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 046391BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA8DD204E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E7ZrJq7WBAkp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 09:11:11 +0000 (UTC)
X-Greylist: delayed 00:08:12 by SQLgrey-1.7.6
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [67.231.154.164])
 by silver.osuosl.org (Postfix) with ESMTPS id 17731204DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:11:11 +0000 (UTC)
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 79CF0405BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 09:03:00 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.50.150])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 6FB2020079; Tue, 15 Sep 2020 09:02:58 +0000 (UTC)
Received: from us4-mdac16-41.at1.mdlocal (unknown [10.110.48.12])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 6E1A0800A3; 
 Tue, 15 Sep 2020 09:02:58 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.50.12])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 17A69100061;
 Tue, 15 Sep 2020 09:02:58 +0000 (UTC)
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id CE86F40067; 
 Tue, 15 Sep 2020 09:02:57 +0000 (UTC)
Received: from [10.17.20.203] (10.17.20.203) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 15 Sep
 2020 10:02:53 +0100
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, <netdev@vger.kernel.org>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <20200915014455.1232507-5-jesse.brandeburg@intel.com>
From: Edward Cree <ecree@solarflare.com>
Message-ID: <d647a101-412b-8f17-2460-5171e0a3a218@solarflare.com>
Date: Tue, 15 Sep 2020 10:02:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200915014455.1232507-5-jesse.brandeburg@intel.com>
Content-Language: en-GB
X-Originating-IP: [10.17.20.203]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.6.1012-25666.003
X-TM-AS-Result: No-4.450200-8.000000-10
X-TMASE-MatchedRID: 7ySqCuYCpfjmLzc6AOD8DfHkpkyUphL9Rf40pT7Zmv7IPbn2oQhptVcB
 fjjXtvYam2VgmZOOf8V3j1jxhRfPxmm3SnkbLZr6qjZ865FPtpoxXH/dlhvLvzbOtNwwSGVOXWj
 vA8TpWFj5fbRHi1cz0bh8wiI4NasiTX7PJ/OU3vKDGx/OQ1GV8mMVPzx/r2cb+gtHj7OwNO2Ohz
 Oa6g8KreTAu+y3PS5Q7xo0KfyV+cLYmY0nJJGcDuS8VnTZISehYp/aJjb634m5lYFAukxj+wjaZ
 DBiXdKG8FMD1Vzv8Xm1ARejXjmGguL59MzH0po2K2yzo9Rrj9wPoYC35RuihKPUI7hfQSp5eCBc
 UCG1aJiUTGVAhB5EbQ==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--4.450200-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.6.1012-25666.003
X-MDID: 1600160578-Oa1zuXsLDrja
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 04/10]
 drivers/net/ethernet: clean up unused assignments
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 15/09/2020 02:44, Jesse Brandeburg wrote:
> As part of the W=1 compliation series, these lines all created
> warnings about unused variables that were assigned a value. Most
> of them are from register reads, but some are just picking up
> a return value from a function and never doing anything with it.
>
> The register reads should be OK, because the current
> implementation of readl and friends will always execute even
> without an lvalue.
>
> When it makes sense, just remove the lvalue assignment and the
> local. Other times, just remove the offending code, and
> occasionally, just mark the variable as maybe unused since it
> could be used in an ifdef or debug scenario.
>
> Only compile tested with W=1.
>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
For sfc/falcon:
Acked-by: Edward Cree <ecree@solarflare.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
