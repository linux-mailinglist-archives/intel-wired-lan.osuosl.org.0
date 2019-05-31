Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AE831453
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2019 19:59:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1504086AC9;
	Fri, 31 May 2019 17:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HOzCVc-ZRKvH; Fri, 31 May 2019 17:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9730F86AEC;
	Fri, 31 May 2019 17:59:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E48D81BF228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C68C185CC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYjwYJmvgOOc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2019 17:59:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1AEB2847E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:59:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 10:59:12 -0700
X-ExtLoop1: 1
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga005.fm.intel.com with ESMTP; 31 May 2019 10:59:12 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 31 May 2019 10:59:12 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.64]) with mapi id 14.03.0415.000;
 Fri, 31 May 2019 10:59:12 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S6 3/7] i40e: fix incorrect
 function documentation comment
Thread-Index: AQHVFX8ye35F6NhlVEGxarXoSak6U6aFigyg
Date: Fri, 31 May 2019 17:59:12 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DD5AF@ORSMSX104.amr.corp.intel.com>
References: <20190528175921.30534-1-alice.michael@intel.com>
 <20190528175921.30534-3-alice.michael@intel.com>
In-Reply-To: <20190528175921.30534-3-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2RhMTlhNDktNTc1OC00NDZlLTlkNGItNzEyODIyOTQyYzAwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS1E0S21jbDJNZ2g5S1VFZ21DSUhrYkVPRGxYZFRhZjFpbzloZElpTHY4UEUyS2pGVUdrZlJpdFIyaDhmUW83KyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S6 3/7] i40e: fix incorrect
 function documentation comment
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
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Alice Michael
> Sent: Tuesday, May 28, 2019 10:59 AM
> To: alice.micheal@intel.com; intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S6 3/7] i40e: fix incorrect function
> documentation comment
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
