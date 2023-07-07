Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F7274B057
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 13:58:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F139740261;
	Fri,  7 Jul 2023 11:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F139740261
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688731089;
	bh=+e0Zy33+SgB5iAltPX3sBWyg8B1ccfjoHgRE1aRFvBI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c7luqf/XMDRSFZe80D3gl6e0oMKspYoHoTKw2xMlnLSaRZVUgIAx5fGgt2yOOZdH2
	 4RVnrCJld/1DOTCaPV6IoiFTwRqad+FYa5fCwurY9++gmZpvIrHxmfKjVx70AnFPfT
	 Mi2FmJPKlEwpVxcFoWusoWc1VRbhC4HgWfGd12u/Fni1VyZHdmtZ+1URaW1bdF8Zvk
	 DPII22SUfy0foVLMBo0b/OWBZZDEH7jHMCXIug2upZjhYYUGfT8x/aCprNxHV4lQGB
	 E7HVRIMpE2rHhw/oyL8nhQ78ad0LjfXe1yEN5DZmFOOWkwwJnzgI/9pHggHQ1AnR5t
	 ApqYHP49aXSPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BoYjQLWaA4ej; Fri,  7 Jul 2023 11:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C67C40044;
	Fri,  7 Jul 2023 11:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C67C40044
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 190BB1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 11:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E57BD4036F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 11:58:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E57BD4036F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6gztVOG2a3gX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 11:58:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9D1E400CC
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9D1E400CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 11:58:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="362739961"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="362739961"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 04:58:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="893974242"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="893974242"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 07 Jul 2023 04:58:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 04:57:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 04:57:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 04:57:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 04:57:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RKpJKVV2akLoxDyqQk159L6cR2afwezGXE0yUjGF+bqOytHFR2jhlmTa97j2WL9ZIuq2yRbUqUguIN+2m1Anf8jTcQrNPO9OymmcbRgSjE469R+p/AMgI+5SU2Xtja+XO1j+05Zcv8YtVd06OPwUzZZonRJwrX6oe65k8mqoa0bRXJvuHZpHFgwxOqc4lMLwEYCCmzcEjiS+btohGp/KZVznC6fJwnWFMoFp1iq0E9uiMiQmQg6B4UCTo03utAxpnjQN4HRJEqOX/doC92+zBGftWM5T25dQmokXU+Vx3fjuvjUJ1K/RxCGRl/DSds5z5J5ghy9iMtUz1MDth9239w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9zZ8rG8xX52jE3BMObxGhKelshfR36FCKwTAcjow9xo=;
 b=Ep7urnvcE14sZY8ARHiKEBUlvCWDu4hS1+IHv8rryB6OHuFwFzK2uXKdFBEBmeFmDIH9eVOOd4krI2vbqAsojWIbMsjXWvHWVGNuNCC6nD3vAKzGuPsDpZ6iyZyXpRV18DjzrxQdfYXH+Vk2DwW2Omj/MYceMlw5j1FP/+5Rb+bLTLP4ebw43F2iTNB8z9jPCf3UePQSNiGWvsMRrcsxLYNEGbjpBC9httw1STW+WC0SSCs/l5f32dRd3anJyICsHleQC1D0wgNMqxeP/xR2fGsKFw1r/Nl1wWi0PrBPW9mxpCvwoqzPOZgKtQcxIWpVxElN9tBp33gxm54SMDeowg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL1PR11MB5351.namprd11.prod.outlook.com (2603:10b6:208:318::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.24; Fri, 7 Jul
 2023 11:57:56 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65%4]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 11:57:56 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 03/10] ice: changes to the
 interface with the HW and FW for SRIOV_VF+LAG
Thread-Index: AQHZo8Wv9FLszxUbTUimKD8HdrZBhq+uTOQA
Date: Fri, 7 Jul 2023 11:57:56 +0000
Message-ID: <PH0PR11MB5013C76864B1F022FB31479D962DA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230620221854.848606-1-david.m.ertman@intel.com>
 <20230620221854.848606-4-david.m.ertman@intel.com>
In-Reply-To: <20230620221854.848606-4-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL1PR11MB5351:EE_
x-ms-office365-filtering-correlation-id: a96bb958-2d2c-42ff-f4b6-08db7ee1671a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z7IrFF5EJTEAXPyI9pvOkxdJ5rpqzlWHSQiUYjObTBJnjRsK8qrr3J3BQIzzGXeSFhB0GTtOKA8Xl0CwWG+3FFoIZPhiJTXjsvBBwMUAHTzpTph7uLh+ZxO+fSeHckaCYRezNtVw/A5lHLOWG6vgys1k7PNy8y6irAx3nKDJ2JU+Z8b1fpKqaFfXotzuy7M8/nd4Tj/FjLME3KYnGSXFYjOoo8L+cR/DQLVwpY3BWbz+r6GGd/SKR0XANLI4yUWywJLTn3+p4HXz4agdtPYC20y7iqP7DijBJl1NoX5CX1hpG1JWLm0GpzuFptMCTla/RiyfLg//qlKrJRS1Hfs2TP8DCMx3F6MHB5RCUQ7tUtYJqASGAfLBq6pI0LQWcsXERt4Gc2bKM2EMVKfO833ph7ARBWnlzKBX/Za1fMpZs7Yhg0/P9bzLY8tmtowuJxEUJwnjJvd45Zc6iAT85WUVcK4yaCAq1X52S4m7o8b18gUvtDxeLBNNRczNm1Nxw9eNzQexpiDQ6Mt8OvlZMVQBE1tWjNC/0DBD8H4VefMQV0a0y5MHdJvg2cMBq1+ZBRVoHUaiH7Uymmq5Xhoen23I3zjB68jgG2hMFVCGUIKcwAc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199021)(83380400001)(82960400001)(122000001)(33656002)(86362001)(38100700002)(55016003)(38070700005)(110136005)(54906003)(71200400001)(7696005)(41300700001)(478600001)(9686003)(8936002)(8676002)(5660300002)(52536014)(64756008)(66446008)(2906002)(316002)(66556008)(4326008)(76116006)(66946007)(66476007)(186003)(53546011)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jFoxtd7X3Vodw4ynmZQkUNbvRpP3HsZ8nwspZX3TqYZSMShM9y9pRTV9c1JH?=
 =?us-ascii?Q?C2th2Ewz7faaMVRubW6Y9yjbqeZB4y1g1b/WTj0e7XL0ovUcYjdcMjlmTR0+?=
 =?us-ascii?Q?QUHjOAhAhh/ZD8uNYzfEXIPaCl9FGUqfdd9St3jGTpPbudpgj2k9KmxUvfSZ?=
 =?us-ascii?Q?PdKdKGqrMF1C9meTIMY9f/EtzjEweUYXOwEsWuz6pt2VTVJSjOYOt7e3zcSn?=
 =?us-ascii?Q?GrYNRIOsMeLnug/PMzBzphHk84Wz2jObaDnh/88R63GMUjnoRgb6paNPa18v?=
 =?us-ascii?Q?Sl5pGaYA/aykGgxAbX+qq+ONnT/TaXA9HrNCYocUC52bOkX5jBApcm+r5Uct?=
 =?us-ascii?Q?W917jwxvjfKk9NqfG/94kD4t4yEtMBAXLfHXEkbV7xqRf0ZUyY4NVcnpmTs7?=
 =?us-ascii?Q?JHeBV1VUYnYRbDEFkT3rjADfznFes8TAebhq+b0Ce7NCazaDVHVrHDjDTC04?=
 =?us-ascii?Q?+EThChbXKbcyB3oLwjrv5UdCGQ3/NxPsZwtT4U1D0zjB5wc1DZWJVPqIePUg?=
 =?us-ascii?Q?lHwHL3rJMSPOC89dNXUjpKtUPfh4BcLPEBJyck/aOn/w7D547ln3Z8jcU5P/?=
 =?us-ascii?Q?XWLb6SvAMynS75HX/2naUcFZrEjh9qarAkiLyOShI3Z1Rvc+JF1RMarzTiIz?=
 =?us-ascii?Q?JMizpzei5oQF4EI2dJ7yOflZJYH7MtIpOGHCrm/rsQpiOp90pFU5nygTHqas?=
 =?us-ascii?Q?OMlquyXmkKDIejE132YoD6STAw517WBjyMa0hqeyvgaJhY8ShdM6y9JOJNRZ?=
 =?us-ascii?Q?ps1/8YWEHqrm8prc1Emy568jUeQPrsCgUQdX+zp6CmihOToJWWm3pZOO5frG?=
 =?us-ascii?Q?BjcKLvZ9KSQhRzuw7ngtozoIrPLsW4ykRwCXrISqGjvLuJz7WYILyrycYPML?=
 =?us-ascii?Q?7mFVSXo/c69nQLbl8+QiNR7DaZJUurwG4ElbmFXResfvSeN0wEi22NBSNq7C?=
 =?us-ascii?Q?+uPBETZCzr1iyp2gIx60rsNbgVOREcXUOTV531ctwOiK8V3BoxIewSAPujZZ?=
 =?us-ascii?Q?vcSLjMtx0IrSkdSoG2eSp4D59v1Uxd6bN2JWdd7oy7HXrrg0p+/EWcU68dgE?=
 =?us-ascii?Q?9bRB17jNJDAL8wUYNJY4qcTqxXO7KsEFhrIfE0RvQnzag83PKSOJRLOKsLOm?=
 =?us-ascii?Q?zfAC0QLCsjlLyc1wt+cVIgHA+ksrMf6JEeR95lx1T1kGdbyeN0x44mSBHmuA?=
 =?us-ascii?Q?x5bTjnf4eoWKI4Aa0cspeiRKbTLGfl0LtGszUt7O6RjC7XNEV1FtrcG4mOXP?=
 =?us-ascii?Q?1ndcJXU//2USFQ1DWB4YJXAy3HjGXX9/aEy4Y5OeFZFqJxG3Vzn9nz/ps4ch?=
 =?us-ascii?Q?tJNgUtyxKJYqHmvUgfCmbPeFeT4UMimUhdbnQ+1JYlhNICIUKdVwfM66iI/7?=
 =?us-ascii?Q?405ko/DJysK2R9RekBUHubWWoU39+BJFVcGkutln4yP9muybp1EZfHH9BNjL?=
 =?us-ascii?Q?LoYJ7NE1qLv6+WmMifyu8HB/pwed/hC1CVUWtM2f84yovrB4tYfBC8uEUzoQ?=
 =?us-ascii?Q?2QZE/b6aGvSiJP/fId0UWPeW4kO+JeONWtM62Wp5Zd+HdxG4nGW3F8G8aUT6?=
 =?us-ascii?Q?xkjrnghMxsLZPA+eyxc51lr3CdKPuWPqLAzhwjTh+f4UXTabGJn3d/j+N04/?=
 =?us-ascii?Q?Uw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a96bb958-2d2c-42ff-f4b6-08db7ee1671a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2023 11:57:56.5450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M0VVO6XVy3H213ZEANSmX4uiJYhi51vDy6nSVlpqLdjW7r3tTaUQyCREOhADSFG2FzAyvMdkxOGqUKMTZnqdB/WSsOT03kPVPPdN0/hZJGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688731080; x=1720267080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QaXZUT0ZqpOAQx+5YH6wgweqqIinp1HoongP02HgchA=;
 b=e4l5KADfSBbYHj4OHlDSIHxhGde3i5FZRGheCAjfD+rljQqFAp/Va2eJ
 8YB01LjBUMRVDgmWF83UBTKYH7teLR6DneGN+5pBPRZ1EmSoX7LOFX7aA
 +O+2IUq0s4xAd6QJEt3u6KMGfaWgVcgoTI4wfPDVnVLs12r+D0DIfjSgE
 JKtebSU9Nixfi/4dIKIjDdrRZSUu3xSuVTx3U4Ia70fUmfiUOK3aLFswO
 HkawQL/Q7aGQ/KskdYonSJ50JDPpSuFEDtKk/rokSfc6RNUf9zu5E4s3e
 VFWZSPHx6HyaDvELz8+LyqRLsamntPszC62TzKzh2a3HW8MUQpdLrRTrQ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e4l5KADf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 03/10] ice: changes to the
 interface with the HW and FW for SRIOV_VF+LAG
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Wednesday, June 21, 2023 3:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bcreeley@amd.com;
> daniel.machon@microchip.com; simon.horman@corigine.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 03/10] ice: changes to the
> interface with the HW and FW for SRIOV_VF+LAG
> 
> Add defines needed for interaction with the FW admin queue interface in
> relation to supporting LAG and SRIOV VFs interacting.
> 
> Add code, or make non-static previously static functions, to access the new
> and changed admin queue calls for LAG.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 50 +++++++++++-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 47 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  4 +
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 14 ++--
>  drivers/net/ethernet/intel/ice/ice_sched.h    | 21 +++++
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 78 ++++++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_switch.h   | 26 +++++++
>  7 files changed, 211 insertions(+), 29 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
