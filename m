Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670FD544A5F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 13:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 700B540C1A;
	Thu,  9 Jun 2022 11:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tTzi84CFQQOj; Thu,  9 Jun 2022 11:38:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7009640BFD;
	Thu,  9 Jun 2022 11:38:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE2321BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 11:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A70D440BFD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 11:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VGr_5WxNhMgn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jun 2022 11:38:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC701400FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 11:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654774692; x=1686310692;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rF72+OUxD9oyD3y13aG2gTZbx756ksPKFgXJmLn1Zb0=;
 b=L93+rZC5I8sExWnQm+JVLESmHcIO2U33rp/VjYyniSbwtgiY6DuxPQch
 NceeYsx4nJ/BGfibbtFsAbOLl59hlOqL5D4hQEHRkqhYNQMeDQCGCKpBp
 TaaO2CIpfrFMNt47HIVsJYpLbMSy8PzOvQffiTZO0ZCcLDiqywYDzmTeH
 T6f+yjWnoZUWR4U2kDe0ORL+DvHawrYYASocqcMfw3FsB0i/6Y75J8mhg
 l5hH4jZfwaEqM3Uka5XHG70H8/uHhQBYpH6Ll6qvxsAj6xm26KHyR9KY7
 h79eF4+jyxkNCN+KMwHeV6XOOQxMxQ7RZy4qK1b5LwaXYqei+ao2TRYZa Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="277274405"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="277274405"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 04:37:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="555859598"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 09 Jun 2022 04:37:52 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 9 Jun 2022 04:37:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 9 Jun 2022 04:37:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 9 Jun 2022 04:37:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R+T/9H08MRgguiseXSbwyBZBjtoZH1GvgWyGfPVJ7vTjveEZ62EMNs7vJyBfBBfySVw3bDZnQIKR79j7oXI/8aXBbM1DoRgyTatsuMEfjql41Tvy8k0xNATxsrGC/JFw+p2CNQYiQXVNV1UJ0PrpthzVdPo+HtFtIXGe++GCrZyoYqOKYx2Qvou+2Lx6gBssSJzQR6NzYnMdHvWSMWu/8fyWP+aI6YPV4vPny8fOH8cMIfKRHEyw8FrtwKVlxTSV2P+6IwKUu/e5F7BglpLkoPAk3qsWMpTfdjDuERP2nTt8fk5c7gfk4ji7x8mADD/c+38ligoet1PDweWDlsR3zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L2OUA+Z48LXMRO0fiXbQc3gy13WQJCvSiGBMqUbDKxY=;
 b=YnzfLS3XLNjbJrwQNb+lQX1IUnTL/gGxR4/trzV1Z+f68NRs4kctIQfZ2Tq/p4u/Lpjt4b3Dmf58zQV8HMumCmTSTFB32Sok+Ca/km0AflejgigNJlMkySNYnLNnEEKaGNU9l6vNk4IEcrHwAWdn6hMQhHWDRlXUBXf/XbufPX/GxYuC4BEagCLlqNeGa5SvJzCRWkSG4/+qNIfAjZ3xvnnafMeOJDK2Z7djYoNdPTPge+d0og5ZsAc98WZAa9csKCk9tNJ2XGffCDG8DhGMbpBTKjC8lDFE7JlUlK5ktRcxGFp3uwWhsky6w5c9XkwhVOzxmQwThZhc9s8SydnSaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM5PR11MB1338.namprd11.prod.outlook.com (2603:10b6:3:b::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.18; Thu, 9 Jun 2022 11:37:50 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5314.019; Thu, 9 Jun 2022
 11:37:50 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Sync VLAN filtering
 features for DVM
Thread-Index: AQHYeju8Prl81IHoXkWPX6+M3XD9M61G9hbQ
Date: Thu, 9 Jun 2022 11:37:49 +0000
Message-ID: <BYAPR11MB3367C9A592DA14BE02459BC2FCA79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220607065457.3192083-1-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220607065457.3192083-1-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b42b4278-0cbd-4ca3-0b4c-08da4a0c7b97
x-ms-traffictypediagnostic: DM5PR11MB1338:EE_
x-microsoft-antispam-prvs: <DM5PR11MB13387CFF13FA154B058C0137FCA79@DM5PR11MB1338.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0iM3igM8y4A5US2bQTWLnrv5jNxG7nTKE8UDQy/kus99hIpTUf3jtEejbrJWg7yaiMaCV03R2bvCSWhnIiiFYxhr88zUp6D9biHB7PZL+Z2eSA1ZK2CnfzQDq0I47/15Umv3vejtdlX4h7CLQVHJHAadp8mVINI5sCHMFTZQ2xllRtKbvZbxR3kU82yOCDiiBwRGxCMYV4dlHQiypCRPQVL0U3p+4nhYL2LRN+ESws8kW8uQkXyzRKT9j2eno/X6PgR8KkwelZJr9Om3vWZDmSY8A9+GsyQnbQ5tz1lUCTRWgpZ19iqxwJKTIMD8sDNKaTLDqS7nNd+G6y/8D0+92HmXz2wTU1CKVq4Rp9gDYnQWBtWHxdJKgzKGjvVXMbwZBWL5L1W97JltQRwCWZ0bI0dFJc8yDSSfZ1zS9mw4460XXGEIs3ovDKx5jElDzwlvKZxm+rmV4rGIA3uMZ7wsY2EGJaow7aL/OnLTKmSgFhhjV5Hie7VsyBZ3+h5FoVfPb64TAihVGXYJPszfHBD4tM0hjCC1oOwvGrASyzrlgjR+9NmAFRi6FVKc597+71ec3kbOk8wKVDhRRv+s6QD2XenhveHK+bvKHtM3BTpwtmnQ+fc9CSiSkyNDrPmPQf+pA8X5yW/QiWy3bL1kmQiaU2ILCkLlZ/vXAH2FWGrHtEbf7jh+xeGbcSN+ZJxwgWVd5tSpH4yz0WbPGGJJGvRlCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(53546011)(8936002)(26005)(5660300002)(86362001)(9686003)(52536014)(71200400001)(2906002)(33656002)(4744005)(6506007)(508600001)(7696005)(38100700002)(76116006)(82960400001)(66946007)(8676002)(83380400001)(4326008)(64756008)(66476007)(122000001)(66446008)(66556008)(110136005)(316002)(107886003)(186003)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/ycDTI0PITndtmxVV3SJK9Dp4xbAtNopWWLTNZMQU7QUp55JUP4JQRYp9gJQ?=
 =?us-ascii?Q?BBjUu9xaFK/ou0/9kVpEEW9wrJ2vVK2SWJONWMOkpAJH1jU6I/OcODlq1j7H?=
 =?us-ascii?Q?P1cV77pwjnvtGO+veT+jyrNpkYVGzpymEQpoFh+HgeCzNY0Shp0uDlYiSlr1?=
 =?us-ascii?Q?uCZuV1fE38ogH8Di/7WKdVFOg3vYAdoyAh8BpDhLK0HRGppDCiv8d2p+Df1W?=
 =?us-ascii?Q?CGDnqnskoiZCSOac4Rqq/zWDWimuWVEcvo18AUo2ubmNIg30IzRSdem/iJR6?=
 =?us-ascii?Q?t3d3JBjHHQc5qnzFlKSCRAEDbENh9DTO1ZwZkKM7ahQDYUsFHqILiNx0YOrE?=
 =?us-ascii?Q?Y3NejreXwHBBziAhwqlBPNm3RwqapyKED3Wc8pAiIG8Dc1lSh6bfZDPeuLKC?=
 =?us-ascii?Q?xDuQciafeviiGMIowPIpP9NgmYZDOLgEhHwtI/62LSsuMLApMuBWy48NCwRs?=
 =?us-ascii?Q?zqxj3+TiseQW9a8VdKpKtQgdq9PEhhJUT2ZbaeNUXRGnEifdzJbrzTCGNPOn?=
 =?us-ascii?Q?euAc5gWqmXUCinJZDr8sNV3OmV/fhOGe0cvTan2dcgqi1SjpVA9x8KbKmavV?=
 =?us-ascii?Q?HXQabpREmzT4Zb0mMIdn5KeLn1yD6yC2As2WWC+G7jIqRvWWVzigN+lm7rGu?=
 =?us-ascii?Q?+QdpPacnaXh5KlIawOjM1xgTkt410+PDjbsY2TIPonfJ+MlEPCgu1d88/5GL?=
 =?us-ascii?Q?cOJxbDE7D6a0tyBLelkis9T70oR6KxhajWj9IKVIyC49u6uEmZaMX9fF6mRQ?=
 =?us-ascii?Q?E5tXly4iRbU7gjTU1iN1GG2niflgDaVE8Pn/neqVeuN8S/Q3aLAkK1OclYaY?=
 =?us-ascii?Q?nTP/EHWnCNRsmAxJx9170zLdd1glHP98nKMefE+qMA5BL9aVh6H81wvDbhFK?=
 =?us-ascii?Q?aF4wbjPS+pgpJt3o3TqAcMcvNU1ZFWz7q0ZvAG2Rqmaqu3u9FUB15xEW1FgF?=
 =?us-ascii?Q?Cfux9rVy40lZSGyX+3tudPcjc9HZ4f1s1M7NN+KCx6y39AnxWBgF3KHAR/A+?=
 =?us-ascii?Q?bb7oj9OnE2GyS3dpPSXhycmsCNnXn37IZ416TSZMhbkWGEWU8eaibMDoja/r?=
 =?us-ascii?Q?ixBHn/S1QQXpy2vPNNOOhXLS5IHrDgM29T23YT+/1Bi8VnMgg9na2imTZHEc?=
 =?us-ascii?Q?mTUQN8LyHpVW6Q3V9571bxKeN+acA0VGLhfFww/L22HhyzDhpFxYJW51gVRG?=
 =?us-ascii?Q?vrGPrvr4Xf0iUS4NAwI1OLWlodyS4aJn4CMwEwKc2pNqUnQVSbBmbs8WCoRt?=
 =?us-ascii?Q?/niBurGh620SThya0SqZ9a1V/h+LrMenLXVAT8Scn6TIYriYVtII3kGpZ2Yf?=
 =?us-ascii?Q?KX8AEerQiSEA06o0kCwf3vPnU0lEduuX2ZB2ovmv0Ty18cl6LTElJrQY0nuM?=
 =?us-ascii?Q?B9cxbj8QZmPMk9CHRQsDC08kmssTGyLL8y71PwlLP01Gzpl2zq7gUthuSqa0?=
 =?us-ascii?Q?BxDXwXP1RCvdLG7QLLa6SRVGl6+TQlnjB2v0xODkFdn2ASVcsMT/Kdt+dIQB?=
 =?us-ascii?Q?1gd8C9LqrzRj2Lle7A6Gu+uLQMuDNT1lEQD3qoRSIwPNY0a+g0FUIr4E+Izb?=
 =?us-ascii?Q?h63jIZJZi68vRpU4pOGB9dkO6Me8K8qIVhu8gSvv1UzCfeZ9gKqQLfeeMwad?=
 =?us-ascii?Q?xomJPsm38X0yKMH1s/RL6V/aEaIr6zh8EVVSlcQDfm1rH8ooM9Y1tB8gLN7Y?=
 =?us-ascii?Q?cMF9P+oggh4AoKq13zy3FKYuLDVGQNIFa5d8UQklZVAwfODN4lO0aLHlJlla?=
 =?us-ascii?Q?p42ZG7wTHg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b42b4278-0cbd-4ca3-0b4c-08da4a0c7b97
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2022 11:37:49.9280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7uM3A2w2HZw2pQ9eYgTFC9HiAes6yKZszhfYXgFRbVXuqeU6lYx2FnHTlBRcfyNoimqc93OFDjkFhO/ghS0Flw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1338
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Sync VLAN filtering
 features for DVM
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Tuesday, June 7, 2022 12:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Sync VLAN filtering features for
> DVM
> 
> From: Roman Storozhenko <roman.storozhenko@intel.com>
> 
> VLAN filtering features, that is C-Tag and S-Tag, in DVM mode must be both
> enabled or disabled.
> In case of turning off/on only one of the features, another feature must be
> turned off/on automatically with issuing an appropriate message to the
> kernel log.
> 
> Fixes: 1babaf77f49d ("ice: Advertise 802.1ad VLAN filtering and offloads for
> PF netdev")
> Signed-off-by: Roman Storozhenko <roman.storozhenko@intel.com>
> Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 49 ++++++++++++++---------
>  1 file changed, 31 insertions(+), 18 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
