Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B65577810
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Jul 2022 21:59:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F3D541674;
	Sun, 17 Jul 2022 19:59:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F3D541674
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658087990;
	bh=UsHK+soyEK14uooN0vxzxjez0ndgjsrY5fRqT4i8fIw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jCR22gKchuaVj6GH6uHKajuAKjqhZQh9eb3leztSFMXBJxK8c9dwj0qKT/yluzydY
	 GnHE4WH+U5mNjMGcemAM+pmtt4dTGz0P+ifeovVgLU5gLrqqtXFl92O+qhnotnyB3f
	 4yeWzjv5qLDFVior9pQffNd0BNiTWf1F3x41xfCLk4qzA2Mqa4v+p+36+ZqXXCsqYZ
	 IkHFPHGzCeYJPDznhp+84bpJ97yPBNn0yp1ViL5oDuHakbuYJM90lfOLRbMtBFdER/
	 w3bPsSHWen4qiKN/isfL9WQksBoHHjWmP9qN49DrYRin1EIkoA879Qd+mVuJbOU4xg
	 VVXKUgl00J0gg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btXHnEUNpYHY; Sun, 17 Jul 2022 19:59:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 013E541612;
	Sun, 17 Jul 2022 19:59:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 013E541612
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DBD21BF228
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 19:59:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 456A583E89
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 19:59:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 456A583E89
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4CXWIJfdQgaW for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Jul 2022 19:59:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41C7483E5C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41C7483E5C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 19:59:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="269113335"
X-IronPort-AV: E=Sophos;i="5.92,279,1650956400"; d="scan'208";a="269113335"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2022 12:59:41 -0700
X-IronPort-AV: E=Sophos;i="5.92,279,1650956400"; d="scan'208";a="723638438"
Received: from coryduff-mobl2.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.148.53])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2022 12:59:39 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: James Hogan <jhogan@kernel.org>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <4752347.31r3eYUQgx@saruman>
References: <4752347.31r3eYUQgx@saruman>
Date: Sun, 17 Jul 2022 12:59:36 -0700
Message-ID: <875yjv5x3r.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658087982; x=1689623982;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kd1q2adKLDYx+c9RrICbcYE5fcyXttTBcYC+MAxxB0E=;
 b=j7p5Y0NPjVH8fVvBPua6FVtO1kJJFDdmB1H9RIERTMcjfYpJkdM7ld2h
 3CvJ/QYwEzor4lcUqj0aHtKCcU/ARVlyy2RPUD0wZOfWcJAe10hVAxSZW
 2cOpPdlpMdQZS/iAElvOYdKwvqD1GK2A/aBT6dLSh8/oH4ThJ8Xisjpp3
 vTCHg46cOVdEBD+8vuERy9oae2DFWKljo1OPRpY1+Ke7DUgrfLXo41ETL
 TiBddXImiPEYrs6JTj2T5he1mxSJMf8kGX86TtUdxYDVssqb5wuWUYOX9
 5OQ7+TIFH2lz5Be05GtGXBw905Aeje2pZLc3vkesNf4UQqdSjkmMbb4R9
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j7p5Y0NP
Subject: Re: [Intel-wired-lan] I225-V (igc driver) hangs after resume in
 igc_resume/igc_tsn_reset
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi James,

James Hogan <jhogan@kernel.org> writes:

> Hi,
>
> I'm getting regular hangs after resume from suspend with the igc driver, for
> an I225-V (rev 3) on an MSI Pro Z690-A, with version 5.18.11 on archlinux. A few
> stable versions ago it was possible to get the network back up by removing and
> reloading the igc driver, however now I get the following, and only a reboot
> works (which itself hangs before actually restarting the machine, and requires
> a hard reset).
>

Sorry for the delay. I was travelling.

I remember seeing some weird behaviors with PCIe PTM and suspend/resume.
Specially with onboard controllers.

Can you see if disabling CONFIG_PCIE_PTM in your kernel config changes
anything? (assuming it's enabled)


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
