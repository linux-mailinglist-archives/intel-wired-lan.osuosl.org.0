Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8917CA04
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 19:12:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0418422115;
	Wed, 31 Jul 2019 17:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DkB63jaGEiwI; Wed, 31 Jul 2019 17:12:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F074E221B7;
	Wed, 31 Jul 2019 17:12:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A33F91BF23F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E2928697D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LUZ77k4wZ89p for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 17:12:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 14A8286977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:12:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:12:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="166459154"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga008.jf.intel.com with ESMTP; 31 Jul 2019 10:12:09 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 31 Jul 2019 10:12:09 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.226]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 10:12:08 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S24 v2 09/12] ice: silence some bogus
 error messages
Thread-Index: AQHVRjO86ym6ry0GTkWPL9QwsodZLqbk+bDw
Date: Wed, 31 Jul 2019 17:12:08 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40E8CC@ORSMSX104.amr.corp.intel.com>
References: <20190729090454.5501-1-anthony.l.nguyen@intel.com>
 <20190729090454.5501-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20190729090454.5501-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWU0MGZkZTktMDQ2MC00MGMyLWE1NzItNDNjNzk4NTBmYmUwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUHRHYXFQcml6MXhDd0UyWkVuRmM4WUVYbTdNdml4TmpSMW9hN2x0MUJPdUlHaUp6ZFhDMVNTTGJabFpoVUxIMyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S24 v2 09/12] ice: silence some bogus
 error messages
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
> Behalf Of Tony Nguyen
> Sent: Monday, July 29, 2019 2:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S24 v2 09/12] ice: silence some bogus error
> messages
> 
> From: Mitch Williams <mitch.a.williams@intel.com>
> 
> In some circumstances, VF devices can be deactivated while a message is in-
> flight. In that case, a series of  scary error message will be printed in the log.
> Since these are actually harmless, check for this case and suppress them. No
> harm, no foul.
> 
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h  | 1 +
> drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 6 +++---
>  2 files changed, 4 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
