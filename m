Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B81614E5A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jan 2020 23:49:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01BC8868E7;
	Thu, 30 Jan 2020 22:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q1e2aAsm0oCs; Thu, 30 Jan 2020 22:49:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCEB586962;
	Thu, 30 Jan 2020 22:49:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D7661BF589
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 22:49:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9912286DE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 22:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eDna14sJ87+w for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jan 2020 22:49:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1AAB86D82
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2020 22:49:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 14:49:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="224266851"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jan 2020 14:49:54 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 14:49:53 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 Jan 2020 14:49:53 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 30 Jan 2020 14:49:53 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S39 10/15] ice: Don't tell the OS that
 link is going down
Thread-Index: AQHV1TfJehMWKNk1UkuVOUmOud8v2agD1KtA
Date: Thu, 30 Jan 2020 22:49:53 +0000
Message-ID: <425ba8d6f3f7406c8d11d5c3d430b9e8@intel.com>
References: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
 <20200127085927.13999-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200127085927.13999-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTM3ODNkMWItOGU3OC00M2YwLWI5YmYtOGJhN2YzYzVjNzU1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidHlXRVNyUHpQYUFabG1sS01wT0tsTUlhSzY3RlpnVGJKNmI5RWpwaFNVV0NcL1RiZXExUXd5b1J6VUxxQzlXbVgifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S39 10/15] ice: Don't tell the OS that
 link is going down
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
> Sent: Monday, January 27, 2020 12:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S39 10/15] ice: Don't tell the OS that link is
> going down
> 
> From: Michal Swiatkowski <michal.swiatkowski@intel.com>
> 
> Remove code that tell the OS that link is going down when user change flow
> control via ethtool. When link is up it isn't certain that link goes down after
> 0x0605 aq command. If link doesn't go down, OS thinks that link is down, but
> physical link is up. To reset this state user have to take interface down and
> up.
> 
> If link goes down after 0x0605 command, FW send information about that
> and after that driver tells the OS that the link goes down. So this code in
> ethtool is unnecessary.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 7 -------
>  1 file changed, 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
