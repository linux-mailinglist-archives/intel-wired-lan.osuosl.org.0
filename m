Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9232721A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2019 00:14:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DDEC84854;
	Wed, 22 May 2019 22:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1f5OC-zG-X55; Wed, 22 May 2019 22:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5611C870DF;
	Wed, 22 May 2019 22:14:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0972B1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 22:14:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 055E487F3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 22:14:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQFsvxWrnxqx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2019 22:14:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F4BB87F3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 22:14:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 15:14:27 -0700
X-ExtLoop1: 1
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2019 15:14:27 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 22 May 2019 15:14:26 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.35]) with mapi id 14.03.0415.000;
 Wed, 22 May 2019 15:14:26 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "'kernel-janitors@vger.kernel.org'" <kernel-janitors@vger.kernel.org>,
 "'intel-wired-lan@lists.osuosl.org'" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e/i40evf: cleanup
 i40e_update_nvm_checksum()
Thread-Index: AQHVBk+PEe+aAebrB0izRitjLZDSJqZv9IzQgAfV1tA=
Date: Wed, 22 May 2019 22:14:26 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DCB1E@ORSMSX104.amr.corp.intel.com>
References: <20190509101051.GB7024@mwanda>
 <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DB7A7@ORSMSX104.amr.corp.intel.com>
In-Reply-To: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DB7A7@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjU2Y2MwZmEtZDNlNC00N2E0LTg5YWItYWVmODkwOWIzNmQyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRHN0OXpcL09LZkNLXC9uQjdackRPQlRNT3BLQUxNVEtaYndBM1ZDZ3BxMFhXSStGWnZOd2hmUzF3cmtMYmhZbndiIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e/i40evf: cleanup
 i40e_update_nvm_checksum()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Bowers, AndrewX
> Sent: Friday, May 17, 2019 3:34 PM
> To: kernel-janitors@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: RE: [Intel-wired-lan] [PATCH] i40e/i40evf: cleanup
> i40e_update_nvm_checksum()
> 
> > -----Original Message-----
> > From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> > Behalf Of Dan Carpenter
> > Sent: Thursday, May 9, 2019 3:11 AM
> > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> > Cc: kernel-janitors@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH] i40e/i40evf: cleanup
> > i40e_update_nvm_checksum()
> >
> > Smatch complains that we use 'checksum' when it's uninitialized.
> >
> >     drivers/net/ethernet/intel/i40e/i40e_nvm.c:581
> > i40e_update_nvm_checksum()
> >     error: uninitialized symbol 'checksum'.
> >
> > This is true, but it harmless because we don't use it again.
> >
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_nvm.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> kernel-janitors@vger.kernel.org; intel-wired-lan@lists.osuosl.org

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>

Helps to paste in my "Tested by" and not the addresses I'm sending it to... 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
