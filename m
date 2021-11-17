Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C73C14545B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 12:30:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71AEB60646;
	Wed, 17 Nov 2021 11:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TOlG0CQ4uS97; Wed, 17 Nov 2021 11:30:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 548C960645;
	Wed, 17 Nov 2021 11:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7BE81BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 11:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D25C260645
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 11:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8mHizdmqpiAL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 11:30:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F09760641
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 11:30:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="213961715"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="213961715"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 03:30:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="494884287"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2021 03:30:24 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 17 Nov 2021 03:30:23 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 17 Nov 2021 03:30:23 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 17 Nov 2021 03:30:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cu0/iWxEOKlxnoyW5sp4n/HVmBOxC0bAvZnCpQkpD640XYqbsivD9le9nN4iUbKX/XP2vlUivbqoKNhX2zNpOrT2ssmsF247LBF29myxrBaSXHsMZqSX8K11SXMuVxqfjy53yusse64liHx5b6snDBAS+z0x4lNTkAMXUXkYn7I+3cA1CbJYGvK64GsFHyg4kOgRLEDvziZwZ8oih3gnPaSwJTblEWXm5T46Npf7LKmJ+Mqj8bN3fHy2ZPu3+rVk78DTgu1CMx5p0zdD5YaeV6thuPFcK+kpghbNx3EurZ6G9uwZzWOzZKxkNiUwO1ffLkMfjR+R6eFUigwkPu0t5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kNr57kmPFvOihcTyGb8TdmKm/FCTgGB59EqeRz6jBCQ=;
 b=ZotuoD87olJccD9+ZeDwYkuQR475eJbV4tmrcCIrVpno5AYg5FIW1zaos0liGJeZ03BrNGwFh5wRDLnosH2t/QtYkQrkGJSoYavsZrQoN9UdG+LjTW2Z9Gcl9yGpAppZLpODBuwv7C+x0utkdGNrlpwUC37cmaDiw7zmgyCbXQrrf0fHRbLHvVyRBaLiOA/AlPWszvu75WmgDC/7FnU53/6MeYHUoXWXAPqabYx+8FbneD24YVfUP69DOB7lqpeo5gxFIJWmwDet53f3U+5AqR8EpFpXuDeyTsJD1ZgGafzKk2CvL28DFYKBQlsl4qapJB5n5OHyGC8ajMulasa/Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kNr57kmPFvOihcTyGb8TdmKm/FCTgGB59EqeRz6jBCQ=;
 b=ul5mJBq17wEoardOJq3lFXhboyUjHjHQ6G334hfVKk2O2YpLaTi5pg7xAu8fjUvLDXsmgllsSaVIZWK02tbVYYlwZwjXMEG5fIqp3718tQqzPw4WjSe/7MwZD/Ps0Niyj7d1Y/iZJjCh2E/Sf6X3TaFZ0UszID8NlLTbNDQjQzY=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5575.namprd11.prod.outlook.com (2603:10b6:8:38::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.27; Wed, 17 Nov 2021 11:30:23 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%8]) with mapi id 15.20.4669.016; Wed, 17 Nov 2021
 11:30:23 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: Fix VLAN feature flags after
 VFR
Thread-Index: AQHX0mGBeVxhpKrIsUGAc4qKwB9mbKwHp9ZA
Date: Wed, 17 Nov 2021 11:30:22 +0000
Message-ID: <DM8PR11MB56210E8944350C64FB991A9BAB9A9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211105162025.23912-1-brett.creeley@intel.com>
In-Reply-To: <20211105162025.23912-1-brett.creeley@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d254d0fb-ff69-4981-affe-08d9a9bda4e5
x-ms-traffictypediagnostic: DM8PR11MB5575:
x-microsoft-antispam-prvs: <DM8PR11MB55758E559FE9AB9C927123DDAB9A9@DM8PR11MB5575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yeb8k6C1uIGizj3yxjaccGHfIJk0n1ivSsq506usyyiD2Fpi+yo6XpWBbqDANmBKCS2BO9qaSDl5LG3/tHAt+xHu3qJ3tw0Uu2yCb8vGEFXFq4ZutSeTmakPXdsuEqAKMydRytv5Dp4AQaxX67oh2UINvrtP2uFLZ7SsycNn8JGTQq+towZY080feuyjNvyJSUtJWGpZYi0jZg+MmVYyUxA1k8NYXgsb+nrjVR/xyv6Tp6w3wkFuNlWqqd0CnC3/1qO1hf2Wr7EWMX1xkvnxCUmSue/jS3TbCLDs1+MJtCE9qL4tpu0WCZN4SA0Q6ewKkjkVeIxrou8CWOEjtZZzRBKrdCcqAfRPE2rAR6caH9PS3dhChGtjABpT+yF8Yll1D96yivUn0d9n39YVYJywzXqTd6XtMFj6d6Ysqz6XNBxMxGR+kRMJvxpk3clhL51G6Sim2cR7ijKj6b4R4ezT8YRrLg7t41fEx2mZcELzwPkqXjih1VBzK3hoDDKnwko1s9VbJBYI9pBF+w3OinXS6Bxs5xyal2NXj2LgN/R1/UsJw+5LmQbVOtTDqKFEiPOLWNj3RiwKuV8CYKfFIcDL7BtCXRniUXlSnZmctAe7RYQvTwT/dKARb/AU7rPNIRoqponWSR4z3Tp9uQpc+AJoBaulsAgm+UswPgUn0CwSCz7aO+uNZ/3NWsZbdyfmFi1aSjqEoKgdsDPdFN9wgEn/wA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(6506007)(53546011)(9686003)(83380400001)(66556008)(64756008)(66446008)(71200400001)(66476007)(76116006)(66946007)(186003)(55016002)(26005)(66574015)(38070700005)(110136005)(316002)(38100700002)(2906002)(33656002)(8676002)(86362001)(7696005)(8936002)(52536014)(5660300002)(122000001)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?2ObcmhcW0qPLZIpQ3crbbyqVaRzw8TzlfQiAVy9mf7w1RCjWSn1TTwf71G?=
 =?iso-8859-2?Q?EZdeCp3y+qVDTEVAgbxpg4wPjHgi/GXj0Ne+PHdMPU8kUFvLvH2hDihAFd?=
 =?iso-8859-2?Q?/n7bhsMLK6/HnlENgjS8NIyNpJLz9LE2FHjLPtFMp0iKqC3vqlJUam1AjO?=
 =?iso-8859-2?Q?zOda7m71BFCPcE7bOKpuXw4ab0cw6cOIHPQRkKdnHZl1RANF57+wo188jE?=
 =?iso-8859-2?Q?hmt7fHgXsLBqg3U+QdaSOGnFZIp4pEIXLhMfcQzuBXeafbrXWB73tcpgLb?=
 =?iso-8859-2?Q?akUEzwGsxGwvo/DgXebf3seRy1gwI0i2TKbOeym82s62tbWylQa443AlEW?=
 =?iso-8859-2?Q?LImi764WToXYcMG1xQUPQoVJjQdhCiCOm4ax0MeCFaIBinbCX0L4QxPdt7?=
 =?iso-8859-2?Q?SGx27nGlKGQ60Z90cIB2XQbdxwDXg7DxH68piP3qpDz4OM2lcNOqMwfkOO?=
 =?iso-8859-2?Q?5PddI8Mlx9ywFUOi2Iee/PyiNBeb0xiQ6cNUgBduUz+bUKhJO0pifYXXYT?=
 =?iso-8859-2?Q?xUV4e9RkQ/J/8LcGgNfrwC0zeZ5XzauSkNuPWTX643QmWgnAiF34Hr6KvC?=
 =?iso-8859-2?Q?34wucIVFEk19QEVtsgW+tX8l2T9XJPLRSmNVrAYJa1JtFtub4falF//XK4?=
 =?iso-8859-2?Q?/XlvJmFvuLUzLBsvjCrxP0CqbYtarYjr9zFBTnCl53lh7Di4M7Pmpnf904?=
 =?iso-8859-2?Q?NAk5RkMLuqf6Jdg/DQQ8/5J9mpql1cVHqi0QcauQXLFBUfHNhStnTLl8p/?=
 =?iso-8859-2?Q?G4+A6c92ye8uPLK4Caw3/R9QvXdj/DL4Zxqc26kxINAAfK6gJn0F0hAxwp?=
 =?iso-8859-2?Q?Z4CHdRocxnKopR4jBA5cec7OKRL5EKqerqx+679iKf03FFFI27rQeAdT5q?=
 =?iso-8859-2?Q?Wl3aQ7ASIuQ3y5mVpsvoUbq6Pj8/e24qncPQNvw4/3NGO8QzVyXCgylvcl?=
 =?iso-8859-2?Q?LpZb/BCknzCV8hfLyEyCnI65WMIoRKQxFihFFbtgHcJN6aPjCUqJ2RlKA5?=
 =?iso-8859-2?Q?1NDl9AWkYPOmCFTzsVC+21FA6V75NoTTmcDiEdXaka6Fc9t6MbEGRZLu/c?=
 =?iso-8859-2?Q?yPUtcBfPU2e9wQ9JBx9WgCqq2V6qa36GEwCk9JRS4oQGWIA3bWTusCrjsK?=
 =?iso-8859-2?Q?umYsuTaOsPmkLkahnqkDlXirX1zj39MF7RC8pLmfv1YbZhJg8VIOkP09fg?=
 =?iso-8859-2?Q?RnaBbwWyO6BiKvX/0/KOOhQpjr75mW1EST06A9ItVM8sRIfX006d/jcevX?=
 =?iso-8859-2?Q?8YBMRAfPDdOU+ff2PHckOAakVfrX3lnK5ywYu7MMmFQwxDGhzRAqBF4ETv?=
 =?iso-8859-2?Q?3kOyjb+lkxbwWunZG9hPRryB6KPFDeD/oZIygMDf+gJRce1/3B0ei5c1JU?=
 =?iso-8859-2?Q?grvdOC/HD7cAvQwVkjWPH+vl7Pd9uc0Nl7xKSXiHIh68CQCD71U96OpslE?=
 =?iso-8859-2?Q?DAvNNvu6AmQYINr8rITuPhk6bYypCaUmRS9xBvohNpBdluYtir74QBbIks?=
 =?iso-8859-2?Q?4XoiTCGYFmqWrkAuC+EpTVm7XYP2HxPDM05oXP2xF5g2sKGxQYw/87EQWh?=
 =?iso-8859-2?Q?eLAOAGzkKCY9dGv8P3/rE1xdFfruUX8jnhTkHN5vOeqetMWEioAyYCLGAQ?=
 =?iso-8859-2?Q?VgDak5ztXhqO1UAFiRN+M27flU+K4HAInpL6dXUA4q9xHyLZk3ps9rq6va?=
 =?iso-8859-2?Q?pxUs6JTOilnoLXAuyI9us6oUz2cz4RL7PGd1usfBX7Yobz6cqLwizne7dv?=
 =?iso-8859-2?Q?AFEA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d254d0fb-ff69-4981-affe-08d9a9bda4e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2021 11:30:22.9059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 63JiK7klA7+ve0vVdRBt70FyAZKBwXzOpQ/BDQiO2tQ119+qNW7Xa7Z2HxgtK91+j/IMRBP6H9x5XkDTKRYxzbUycfLfGm8ngxrr2V8UMyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Fix VLAN feature flags
 after VFR
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Brett Creeley
> Sent: pi=B1tek, 5 listopada 2021 17:20
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] iavf: Fix VLAN feature flags after=
 VFR
> =

> When a VF goes through a reset, it's possible for the VF's feature set to
> change. For example it may lose the VIRTCHNL_VF_OFFLOAD_VLAN
> capability after VF reset. Unfortunately, the driver doesn't correctly de=
al with
> this situation and errors are seen from downing/upping the interface and/=
or
> moving the interface in/out of a network namespace.
> =

> When setting the interface down/up we see the following errors after the
> VIRTCHNL_VF_OFFLOAD_VLAN capability was taken away from the VF:
> =

> ice 0000:51:00.1: VF 1 failed opcode 12, retval: -64 iavf 0000:51:09.1:
> Failed to add VLAN filter, error IAVF_NOT_SUPPORTED ice 0000:51:00.1: VF
> 1 failed opcode 13, retval: -64 iavf 0000:51:09.1: Failed to delete VLAN =
filter,
> error IAVF_NOT_SUPPORTED
> =

> These add/delete errors are happening because the VLAN filters are tracked
> internally to the driver and regardless of the VLAN_ALLOWED() setting the
> driver tries to delete/re-add them over virtchnl.
> =

> Fix the delete failure by making sure to delete any VLAN filter tracking =
in the
> driver when a removal request is made, while preventing the virtchnl
> request.  This makes it so the driver's VLAN list is up to date and the e=
rrors
> are
> =

> Fix the add failure by making sure the check for VLAN_ALLOWED() during
> reset is done after the VF receives its capability list from the PF via
> VIRTCHNL_OP_GET_VF_RESOURCES. If VLAN functionality is not allowed,
> then prevent requesting re-adding the filters over virtchnl.
> =

> When moving the interface into a network namespace we see the following
> errors after the VIRTCHNL_VF_OFFLOAD_VLAN capability was taken away
> from the VF:
> =

> iavf 0000:51:09.1 enp81s0f1v1: NIC Link is Up Speed is 25 Gbps Full Duple=
x iavf
> 0000:51:09.1 temp_27: renamed from enp81s0f1v1 iavf 0000:51:09.1 mgmt:
> renamed from temp_27 iavf 0000:51:09.1 dev27: set_features() failed (-22);
> wanted 0x020190001fd54833, left 0x020190001fd54bb3
> =

> These errors are happening because we aren't correctly updating the netdev
> capabilities and dealing with ndo_fix_features() and
> ndo_set_features() correctly.
> =

> Fix this by only reporting errors in the driver's ndo_set_features() call=
back
> when VIRTCHNL_VF_OFFLOAD_VLAN is not allowed and any attempt to
> enable the VLAN features is made. Also, make sure to disable VLAN
> insertion, filtering, and stripping since the VIRTCHNL_VF_OFFLOAD_VLAN
> flag applies to all of them and not just VLAN stripping.
> =

> Also, after we process the capabilities in the VF reset path, make sure t=
o call
> netdev_update_features() in case the capabilities have changed in order to
> update the netdev's feature set to match the VF's actual capabilities.
> =

> Lastly, make sure to always report success on VLAN filter delete when
> VIRTCHNL_VF_OFFLOAD_VLAN is not supported. The changed flow in
> iavf_del_vlans() allows the stack to delete previosly existing VLAN filte=
rs
> even if VLAN filtering is not allowed. This makes it so the VLAN filter l=
ist is up
> to date.
> =

> Fixes: 8774370d268f ("i40e/i40evf: support for VF VLAN tag stripping cont=
rol")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 33 ++++++--------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 45 +++++++++++++++++--
>  3 files changed, 56 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index e66a7e455ce1..4d62231ec6b5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -505,4 +505,5 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter
> *adapter);  void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);  str=
uct
> iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
>  					const u8 *macaddr);
> +int iavf_lock_timeout(struct mutex *lock, unsigned int msecs);
>  #endif /* _IAVF_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 814c87715f68..a655073af6c7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
