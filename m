Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 772A3383946
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 18:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FF6760A7D;
	Mon, 17 May 2021 16:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LTu3S-YmlQPJ; Mon, 17 May 2021 16:11:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23B59607F9;
	Mon, 17 May 2021 16:11:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D55331BF329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 16:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C32A860814
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 16:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YO7PlFJ7hk7K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 16:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8BD360724
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 16:11:38 +0000 (UTC)
IronPort-SDR: VRBe7RVeCI6+vcPZhjH4rtScKKpAaWvrfmdAEcug7MRdWlPkV9A5LvDBNRTFQfzJO8cjnU42TA
 AqWlvzUFbMcA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200549641"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="200549641"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 09:11:37 -0700
IronPort-SDR: 4uRZisQkY0v1wgg3I9c0I+LCJefuPBxXQnE5aPdODni2uP7snwEmunJ27rT0KY3XO3oLyjGPg9
 7I1d9/xoyJSw==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="438977527"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.212.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 09:11:37 -0700
Date: Mon, 17 May 2021 09:11:36 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <20210517091136.00000e96@intel.com>
In-Reply-To: <23247f10ab58ae1b54ac368f8a2d2769562adcf4.1621159997.git.mchehab+huawei@kernel.org>
References: <cover.1621159997.git.mchehab+huawei@kernel.org>
 <23247f10ab58ae1b54ac368f8a2d2769562adcf4.1621159997.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 11/16] docs: networking:
 device_drivers: replace some characters
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
Cc: Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mauro Carvalho Chehab wrote:

> The conversion tools used during DocBook/LaTeX/html/Markdown->ReST
> conversion and some cut-and-pasted text contain some characters that
> aren't easily reachable on standard keyboards and/or could cause
> troubles when parsed by the documentation build system.
> =

> Replace the occurences of the following characters:
> =

> 	- U+00a0 ('=A0'): NO-BREAK SPACE
> 	  as it can cause lines being truncated on PDF output
> =

> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

For the Intel Ethernet Docs, LGTM!

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
