Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 812BB231159
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jul 2020 20:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A9AC204C1;
	Tue, 28 Jul 2020 18:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WrhGH5B8Ym8E; Tue, 28 Jul 2020 18:11:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ACAA920518;
	Tue, 28 Jul 2020 18:11:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9CDE1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 18:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C3F3A867ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 18:10:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Bz9SIm8AaC1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 18:10:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 178BF867C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 18:10:28 +0000 (UTC)
IronPort-SDR: 6VzNObrnVpqGUBcV5aC2L2VTN8g5uUXWu5QiwtmWDTG/yaAg/jwIPxUSqipPLH9HeX45Qc6s6J
 xNBBKx27wAQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="148743254"
X-IronPort-AV: E=Sophos;i="5.75,406,1589266800"; d="scan'208";a="148743254"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 11:10:27 -0700
IronPort-SDR: Tw/Dz+goe2FR369Xxe+nU6MNlxkEFjanSvStfO9CQ6lld/ErJMo5NC/Ziukp0Mz8H5iWh7ZJXQ
 czqHmfhcwmsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,406,1589266800"; d="scan'208";a="434411395"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga004.jf.intel.com with ESMTP; 28 Jul 2020 11:10:27 -0700
Date: Tue, 28 Jul 2020 11:10:27 -0700 (PDT)
From: Jesse Brandeburg <jbrandeb@intel.com>
X-X-Sender: jbrandeb@jbrandeb-desk.jf.intel.com
To: Moritz Muehlenhoff <jmm@inutil.org>
In-Reply-To: <20200716203902.acn3ea2b4iorxlhq@inutil.org>
Message-ID: <alpine.LFD.2.23.451.2007281106010.590669@jbrandeb-desk.jf.intel.com>
References: <20200716203902.acn3ea2b4iorxlhq@inutil.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 28 Jul 2020 18:11:37 +0000
Subject: Re: [Intel-wired-lan] Further information on
 CVE-2019-0145/CVE-2019-0146/CVE-2019-0147/CVE-2019-0148/CVE-2019-0149 for
 Linux?
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
Cc: carnil@debian.org, intel-wired-lan@lists.osuosl.org, benh@debian.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On Thu, 16 Jul 2020, Moritz Muehlenhoff wrote:

> Hi,
> https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00255.html refers
> to vulnerabilities in Intel Ethernet drivers and a few of them refer to the i40e driver
> specifically:

I'm sorry Moritz that we haven't gotten back to you. We are chasing down 
the specific patches made upstream for software portions of the below 
fixes.

> CVEID: CVE-2019-0145
> Description: Buffer overflow in i40e driver for Intel(R) Ethernet 700 Series Controllers
> versions before 7.0 may allow an authenticated user to potentially enable an escalation
> of privilege via local access.
>
> CVEID: CVE-2019-0146
> Description: Resource leak in i40e driver for Intel(R) Ethernet 700 Series Controllers
> versions before 2.8.43 may allow an authenticated user to potentially enable a denial of
> service via local access.
>
> CVEID: CVE-2019-0147
> Description: Insufficient input validation in i40e driver for Intel(R) Ethernet 700 Series
> Controllers versions before 7.0 may allow an authenticated user to potentially enable a
> denial of service via local access.
>
> CVEID: CVE-2019-0148
> Description: Resource leak in i40e driver for Intel(R) Ethernet 700 Series Controllers
> versions before 7.0 may allow an authenticated use to potentially enable a denial of
> service via local access.
>
> CVEID: CVE-2019-0149
> Description: Insufficient input validation in i40e driver for Intel(R) Ethernet 700
> Series Controllers versions before 2.8.43 may allow an authenticated user to potentially
> enable a denial of service via local access.
>
> Is there any further information which commits fixed these and if so, were they submitted
> to stable kernels? (The Debian kernels are based on 4.9.x and 4.19.x LTS kernels, so that
> we can make sure these are addressed in stable/oldstable releases)

We will get you the information, it was a mistake on our part to not 
mention CVEs in the commit messages if/when we upstreamed the patches. The 
only thing I can say for sure is that these have been addressed in our 
Out-of-tree drivers, but I realize that is not your question.

Thanks for your patience,
Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
