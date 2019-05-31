Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 395C73144A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2019 19:56:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6C4687631;
	Fri, 31 May 2019 17:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gmyROJ3CDcRx; Fri, 31 May 2019 17:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5026F86E49;
	Fri, 31 May 2019 17:56:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 049DD1BF616
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C75742040A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJs-LLfztvr0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2019 17:56:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 40D8420473
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:56:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 10:56:43 -0700
X-ExtLoop1: 1
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga003.jf.intel.com with ESMTP; 31 May 2019 10:56:44 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 31 May 2019 10:56:44 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.163]) with mapi id 14.03.0415.000;
 Fri, 31 May 2019 10:56:44 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Do not check VF state in
 i40e_ndo_get_vf_config
Thread-Index: AQHVEcFI9+hnO2FL4UyPyuTPTk/OFqaFkNfg
Date: Fri, 31 May 2019 17:56:43 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DD57F@ORSMSX104.amr.corp.intel.com>
References: <20190523234533.48418-1-lihong.yang@intel.com>
In-Reply-To: <20190523234533.48418-1-lihong.yang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDA5OTA2YWQtOTk3Yy00MTczLTg4ZmUtMDM5NjY1MDU3ZTExIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMVdiOTVsWGtBOFo3N09wUmprQjR1TG1Pa0lBSkVhN011M3lVSUIyYjZCbEZnalAraGlETE12Q2Q3eGFlRnh6biJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Do not check VF state in
 i40e_ndo_get_vf_config
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
> Behalf Of Lihong Yang
> Sent: Thursday, May 23, 2019 4:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] i40e: Do not check VF state in
> i40e_ndo_get_vf_config
> 
> The VF configuration returned in i40e_ndo_get_vf_config is already stored
> by the PF. There is no dependency on any specific state of the VF to return
> the configuration.
> Drop the check against I40E_VF_STATE_INIT since it is not needed.
> 
> Signed-off-by: Lihong Yang <lihong.yang@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
