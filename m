Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147AA430F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 22:26:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C03F787FDE;
	Wed, 12 Jun 2019 20:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x8eNccsYWJjY; Wed, 12 Jun 2019 20:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6ACC187FFF;
	Wed, 12 Jun 2019 20:26:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6DD71BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 20:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C18BF203F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 20:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gbpAXYHefrpo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2019 20:26:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id B550020336
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 20:26:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 13:26:19 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga002.jf.intel.com with ESMTP; 12 Jun 2019 13:26:18 -0700
Received: from FMSMSX110.amr.corp.intel.com ([169.254.14.89]) by
 fmsmsx104.amr.corp.intel.com ([169.254.3.137]) with mapi id 14.03.0415.000;
 Wed, 12 Jun 2019 13:26:16 -0700
From: "Wang, Liang-min" <liang-min.wang@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] ixgbevf: add control of skipping PF link-status check
Thread-Index: AdUguRPM3NrCemJIQiGy1Z4d033i6wA3m6uAAA6g6MA=
Date: Wed, 12 Jun 2019 20:26:15 +0000
Message-ID: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F83C@FMSMSX110.amr.corp.intel.com>
References: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
 <d96a913951ec3649171e9d5f1cf7ee8be9d41727.camel@intel.com>
In-Reply-To: <d96a913951ec3649171e9d5f1cf7ee8be9d41727.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODFlZGQ2NmEtZjJkZS00YjkzLTk1NzctM2U4MTRjZjQ3OGQxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNURJQVZDXC9SMmE5UUc3MnRiK2p4QU4razZLN0tMT0JETmlZamZuNFJrd2t1Mmp5YmgxajVaZlRHYVdiTURqaWIifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbevf: add control of skipping PF
 link-status check
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
Cc: Guilherme Piccoli <gpiccoli@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

You ACK the patch, and that's why I manually added reviewed-by. 

Larry

> -----Original Message-----
> From: Kirsher, Jeffrey T
> Sent: Wednesday, June 12, 2019 4:24 PM
> To: Wang, Liang-min <liang-min.wang@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Guilherme Piccoli <gpiccoli@canonical.com>
> Subject: Re: [PATCH] ixgbevf: add control of skipping PF link-status check
> 
> On Tue, 2019-06-11 at 17:55 -0700, Wang, Liang-min wrote:
> > ixgbevf: add control of skipping PF link-status check
> >
> > The ixgbevf link status check always triggers an interrupt on Physical
> > Function (PF) driver because
> > it uses mailbox read to check PF link-status. For any Virtual Network
> > Function (VNF) implementation
> > where periodical link-status check is needed, this interrupt per request
> > becomes a significant
> > performance overhead. Therefore, this change uses the input parameter,
> > autoneg_wait_to_complete, to
> > conditionally skip the PF link-status check. For scenarios where only
> > quick Virtual Function (VF)
> > link status check is required, application could skip the PF interrupt by
> > setting autoneg_wait_to_complete
> > to "0". For cases where deep link status check (include both PF and VF
> > link status check) is required,
> > the application can set the autoneg_wait_to_complete to "1".
> >
> > Signed-off-by: Liang-Min Wang<liang-min.wang@intel.com>
> > Reviewed-by: Jeffrey T Kirsher<jeffrey.t.kirsher@intel.com>
> 
> Interesting, I know I did an initial review, but I do not remember adding
> my reviewed-by to this patch yet.  FYI, I never use my full legal name when
> signing any patch, which tells me you forged my Reviewed-by.
> 
> > ---
> > drivers/net/ethernet/intel/ixgbevf/vf.c | 10 ++++++++++
> > 1 file changed, 10 insertions(+)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
