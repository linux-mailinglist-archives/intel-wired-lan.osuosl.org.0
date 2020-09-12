Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7CC2676F7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 02:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD48820476;
	Sat, 12 Sep 2020 00:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GmjZBRtDCtOm; Sat, 12 Sep 2020 00:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 30574275A6;
	Sat, 12 Sep 2020 00:49:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BD9C1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Sep 2020 00:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 54BB7879C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Sep 2020 00:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YiyxJdeAzzDs for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Sep 2020 00:49:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8885E879B6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Sep 2020 00:49:46 +0000 (UTC)
IronPort-SDR: rQRCWR+EJ7s3zrR2TBPqceI4H0NEWUmZ4efgBtWm6RleSXnlUbo7Qk3NMfsALh9c4Hq+ZzV1DS
 gUR0+T1SPraw==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="243701673"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="243701673"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 17:49:42 -0700
IronPort-SDR: ecmaGFAwIHhYe3cRmDcE3rKRI/v5PhtgkZ7vFobDOf297ueu0It4fCRj7hfZfT9cu8hNuDmG5K
 HC2RpLSNIw7A==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="481528292"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.99.126])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 17:49:40 -0700
Date: Fri, 11 Sep 2020 17:49:39 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Edward Cree <ecree@solarflare.com>
Message-ID: <20200911174939.00001817@intel.com>
In-Reply-To: <115bce2a-daaa-a7c5-3c48-44ce345ea008@solarflare.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-12-jesse.brandeburg@intel.com>
 <227d2fe4-ddf8-89c9-b80b-142674c2cca0@solarflare.com>
 <20200911144207.00005619@intel.com>
 <e2e637ae-8cda-c9a4-91ce-93dbd475fc0c@solarflare.com>
 <20200911152642.62923ba2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <115bce2a-daaa-a7c5-3c48-44ce345ea008@solarflare.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 11/11]
 drivers/net/ethernet: clean up mis-targeted comments
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Edward Cree wrote:

> On 11/09/2020 23:26, Jakub Kicinski wrote:
> > #declare _MCDI_BUF_LEN(_len)   DIV_ROUND_UP(_len, 4)
> >
> > 	efx_dword_t txbuf[_MCDI_BUF_LEN(MC_CMD_PTP_IN_TRANSMIT_LENMAX)];
> >
> > Would that work?
> That could work, yes.=A0 Though, probably lose the leading underscore
> =A0in that case.

Ok, I made a split-out patch for that change in v2, it seems to work
once I found a name that didn't collide.

Thanks for the useful discussion!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
