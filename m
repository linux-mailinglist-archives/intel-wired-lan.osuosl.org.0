Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E3561565C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 01:01:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D997B4074E;
	Wed,  2 Nov 2022 00:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D997B4074E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667347275;
	bh=LZ+W6fGDxvkvR3BNkS6vFxAswRDgrqrJb8TADFGFSLY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E1zpXAnp5s+LvEQYM6L4nfeZlP1V779ZGJL/2XyVhlHQZNOfiuiHQsMhp+Wgs0dvm
	 pIyFZyfJ7pA5CDvpXlzjOOGiVR46eLysiBf5iSGzHcHD0a8sjEhQYfY76/PO6QbVXd
	 /48Hye9H5UcEjzysq4sshD5KQHyTtlvUQD9yPkcuRTfi2IqH03Se7E+qRrAL1wP3HI
	 Vj5WiXm3ATpfigSkN0nJM2+uyYk8f2zJA2+546ScMTWWf6NgtEBG4OWQHykSKCiMa+
	 u3MXeqFPy9mY9XxsA4XCoC0V8JeZGxhUBjoT+w8auJnjPOGKCxIWkZV+Z8PRNBh78D
	 1c6isEbjLiNDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uzb8YNYDn2Vi; Wed,  2 Nov 2022 00:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A00B940141;
	Wed,  2 Nov 2022 00:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A00B940141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12A701BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 00:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E054260E56
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 00:01:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E054260E56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nce9DX2T2U9H for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 00:01:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE4E660D70
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE4E660D70
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 00:01:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296708572"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296708572"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 17:01:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="634052519"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="634052519"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 01 Nov 2022 17:01:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 17:01:01 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 17:01:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 17:01:01 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 17:01:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZR6OqwoVtpTXP6lKvaepI9pkD84IPh3inrY3Xcu6z3G4uaVS5H+tvaI4gAaM/11c+EsUD5dIKG1AOTLCmeLDz5XZZzvSfGgkOBgGmyJxeNwSiL6yr5JKhHvViu2Tsq6ZagIKcfHTjTeHdQe36Rrp25Uy8IYqc+EBax2sxOXL7KeSDVt7D2z/nAe0Sp9HZ8tKP0FV+tEF+30BT97y1ORi6z15U7TUumEcQIh90t4MVE7AOvJpYlV2J9p2CXczLPT2bDm715hF+0djYWd0oN+koqLq9ODlfFb3Dhj28BSMG0JVMcmb9DlkjCpZgqOv+FzI9TL0IsbkwdeXjr3BE40CHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1fpFnnqIyp1OLV55SaJpN88FXpzRBN/Zfj3XHMtDx8M=;
 b=PXTWjySXM/X4vv323DuQ5lnRef3pOWceqDj9YEGepQuiPeiO3JwqpuqTUdI1p0SLMuLNSA7Bi5seccyFOq6oNCdC6SEEQ7vD9Qoll6SGeR2+FVbLN2Q9Ol/qOivOnSmJIzKTp8vYgA2YzkkofXfkulNLmQdyGakmpIwn0fgmwMAe700Lhb28MifOHcAC1TosbmS6iV7EPgD8S+bEDFJeIioBNV4q6fpVO0LSBpyr6zGeB5dfHeGZJE9o7VuePpgdMQ2Be3RJm7fCZtflS8SbI63F21UiTPUBkdE3pF95W5kXHG18NyzX80rCAZyHquNvx1YraOKFCSpFqI/KAsPmNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by CO1PR11MB4978.namprd11.prod.outlook.com (2603:10b6:303:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Wed, 2 Nov
 2022 00:01:00 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::1205:184e:6b66:b54d]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::1205:184e:6b66:b54d%4]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 00:01:00 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next 05/15] ice: always call ice_ptp_link_change and
 make it void
Thread-Index: AQHY7kS95RK8h7eGeE2Tv9eJkHVSnq4qv8Gg
Date: Wed, 2 Nov 2022 00:01:00 +0000
Message-ID: <MW5PR11MB58119A5E035A150C3EC4A2FEDD399@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-6-jacob.e.keller@intel.com>
In-Reply-To: <20221101225240.421525-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|CO1PR11MB4978:EE_
x-ms-office365-filtering-correlation-id: 375118a0-739d-46c3-0cc9-08dabc65535a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TQIlLfDi+WriQYDL2ujnf/MORWxbAhTE8u3zq67Xgg5LIz6srnJ/cjU4v/u/n6GoODbdbSaycfG/Qo3BUe4x6uZroBF+n0ZszJu+v+qq/NwVS1nSyECGrABH9wXH8tQ+1Ua31feCZUaiPeenmGYiM1HW3NmBKhvdcaNq2/pVZ0KY0JWxwJJoKmCkQ+633eRRyfUo34xpaGrjiZfhS0ReHaBH9XOzXvtq6NNFd3qYPUS21tT59oycXIYEjYqtXueo0UTsVkoni4jcf30MdzJz0RaNLf7iKb9XMjPFX8xW7HNa8DYgqEOXLKzUS9wxZ7PZ9Dj3Y1dI1ORJ5v24AAA8acNIWXOu2TM0LpeQePg4jIENBfxAuymw45k9mHcyDL94wk0buh15X6u2p6yZ6hr4UpNiLHNnDBw7uWTQxsnDRTS7TJ0MWUcoacxic1F18LaMCnMLepDLtECuFj4SkufAZcXRkxeT4HGxUN9vugjzUiFRA8WLG02Hrb8wg9e9z9eGgWB3hKKTEKnLeEC1UtoDlNZL8inTEeM1otVxuhZLjsV1lGa5Kp3kFIxUMSAlnKXv13BckDV37MHUz6idGwvAezWJdt+BFo8bdQyMxdrz4P8sa8H/LoZQUVv8l3mk5k90EK9qtPip5oFbQBvKfaKID/1GGE4p61nP+r/ZynqnNsWPN3fvb1gOZzng0jYOvMXCGvzscjk2K0CZf5VXbupriOCuiHj4RIdJX5PsrJqQhbexha7O+Wj8U0IxfsHW8rx03KhHpT8LqoU4Tw9TwKxEKg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199015)(71200400001)(55016003)(82960400001)(122000001)(2906002)(5660300002)(86362001)(38100700002)(83380400001)(33656002)(38070700005)(66556008)(186003)(9686003)(53546011)(26005)(478600001)(110136005)(316002)(8936002)(41300700001)(76116006)(6506007)(64756008)(8676002)(66446008)(66946007)(66476007)(52536014)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?amiMqFYdztdQzRFNzFIlIpTsInnRb9Uv974LJs1wlNhpbuzWLIiQj/cW2V6U?=
 =?us-ascii?Q?TzQOEZKRYtke4ICYx99/vAnrUOC/mX9LmmeuGnK0P0LWus61gKHL7+gg1ew4?=
 =?us-ascii?Q?FDyvcSosf0Ntv0JRFDHBX+qy0nuedOT2Bn9Ggkh+NspAAG91XtJv4uhvDCgA?=
 =?us-ascii?Q?iQ6Imn6SYIFkRLUDZd31Rw4Md5X3gcRTWcqdRv4iRPcoDqEePRJ3mnqKXgor?=
 =?us-ascii?Q?drc0NEC4COBVm86ZwaPiRRiBBtQFkApJF6Hx8dCyG3sl0QUd0IVitUgn9W8I?=
 =?us-ascii?Q?iXN0YxfCv+7R9j1ZSnt1y4H/t5JcTQBUhgVpYCKUMPc3vWkFxf4+kXzt1AE2?=
 =?us-ascii?Q?qEThi9XvboXYg403O76AEo+4oHq48TwsDBLvVKxqc9wNUSJjN5IO6l3H9mLi?=
 =?us-ascii?Q?O3mqhJZwJP7l6/VrFUEFsTOhUdySmm+6eAXgCkIcW38BXQgDIvN9sYcZQvPf?=
 =?us-ascii?Q?B/OILW6PmFmP2+x1DS/gjlbpAp+Mw0ZMoWhcwdwIGM3k0TRGwpdC2bMUSBDY?=
 =?us-ascii?Q?VueV9IvCx63RMSKDGClUoElN6Az2hGeG1h9Yd4WmtSomtTTpQ5qTz7sE5/Ys?=
 =?us-ascii?Q?FPSj3a+d7aIUFgkerr1EvZgJ9/n3AkbCOU7Xbtl7e3D9xmbJG7S848VfpRkP?=
 =?us-ascii?Q?TCqxtDaobKFxt69he9JPOWCLOfOmDyBT3r0sawKRAJpJlEDegLuQm4If5GEF?=
 =?us-ascii?Q?XIbX+9gCPus9MDdKRPfeH0wRLo5b+83/OwGdl8aQDGxU3KeeumtE3aLfD57I?=
 =?us-ascii?Q?HxZe111xFnlTWPIeurRwpOe1tWvdFxjDsZ1AzpkxEG6ZIPAbffnaToNlMB21?=
 =?us-ascii?Q?oplOKXZT4F9utnKdVf6OnqPR23IhKIvOvPcGYC/c6c+N41ZAy8VPEV5HUX24?=
 =?us-ascii?Q?nnGweuTYpOPWD3j5bT6T1ybuPPJU9+q8ld3CNy2Tx5oZ5KFltcvcFCcLSSRb?=
 =?us-ascii?Q?vpbXNYP/1VgCMfqi4Gv4t5vHLjpNQJXYftDV/VO06X0uGMD/77pk7UKpYiFD?=
 =?us-ascii?Q?jLPakgW48o0gXKJBE6zKl+kv79Ap8bgP1fI65s3UysguteopMQEI0ltObfnE?=
 =?us-ascii?Q?YQo1cbJ9UkP1m/b5Mv0dIJOTXZi0CUiS2hecMtEfyTvj2EW8HTa0oi04lsiU?=
 =?us-ascii?Q?L3RJPMFx7MdaH/+EmaOyVxkUwcOqi1x/EQSZaRPqLnwF0zb1AKjdrVkVjj5l?=
 =?us-ascii?Q?/S5P5Bz6f5+X/Ej6H8KgEmdbsFJm98joPtyDamplO3tk2miqskpxdFJ3e0XA?=
 =?us-ascii?Q?M1eaXjqfYes5C+1F3+svQsT09jOeAmDTcqglNnsrx7qmpWeNP/N+HwXetvWc?=
 =?us-ascii?Q?Dc1hKBNIBgkXrd38nFgbEO/Rci4obPCQpXmXBHcQ9MnAWfzeuqzDNhU9BZRu?=
 =?us-ascii?Q?mpukjVCRQZN1M9fXYgec6bQ6yKo6eONBdzuO+xblDm3qfmZ431Qq2FX5F6WK?=
 =?us-ascii?Q?/mKHS6JJd0L7efjf7zTDTaC1A4gdWjY1iQ0Cyoo6DLMARwiCNwoAAtA4AZiW?=
 =?us-ascii?Q?xxzO5FAiujySftgDVZJqpUfuqxDVoSc1RGrhIcvjQVSV6wZzxd3mjEkP0DLt?=
 =?us-ascii?Q?UZeDP0sx07O8A7gKwgNmaEVH2CNXi9hwgKr2phJk4wnvkio6mszQwsVwZzZy?=
 =?us-ascii?Q?aQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 375118a0-739d-46c3-0cc9-08dabc65535a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 00:01:00.2319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cvMGdnvuUY0bPZ2UaZyjufwk7uCKlzh/bQdw0punEvSEKINiF4YpHCwxrte+l4mlKTvGdyvru6EisTipl6mR9pl8aJSdthJO73QdN4SNWDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4978
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667347265; x=1698883265;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ArXzb6zrQfy8PVM21zv2cYfjCR6cVXsTSFUxCi+ql+M=;
 b=iPPstR0atGnRa1sMNpKF2oQse9Im37L52CCskRbEY1NWN7RqjA2s8UiZ
 Qa7wMqzs9v2PRyvxnySs1pUiya+rlI+wey/L2H+TK51dWowbUjasi811c
 ouFmwmIlvwfjGzsBjTIeOW/vzM67W06HvHmjZjsVT1AXcufUFG1t4Rc1Q
 88N++26BZ8VsYsY2uWRJmO2Tecb1dwcskpu3dup66L6cBpOYyJv4RYlls
 HJ/H1P8R+AQFvfsoZSiwjlmslJAgZR5ZoQqkFdf43TT1qxGLliJdTEqto
 Bdbumliu5K9U9eU7TuWAnLBecxVgqYfwm6zYzzWd+g8kQClg55iUDuCWS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iPPstR0a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/15] ice: always call
 ice_ptp_link_change and make it void
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

2> -----Original Message-----
> From: Keller, Jacob E <jacob.e.keller@intel.com>
> Sent: Tuesday, November 1, 2022 3:53 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Ertman, David M
> <david.m.ertman@intel.com>
> Subject: [PATCH net-next 05/15] ice: always call ice_ptp_link_change and
> make it void
> 
> The ice_ptp_link_change function is currently only called for E822 based
> hardware. Future changes are going to extend this function to perform
> additional tasks on link change.
> 
> Always call this function, moving the e810 check from the callers down to
> just before we call the E822-specific function required to restart the PHY.
> 
> This function also returns an error value, but none of the callers actually
> check it. In general, the errors it produces are more likely systemic
> problems such as invalid or corrupt port numbers. No caller checks these,
> and so no warning is logged.
> 
> Re-order the flag checks so that ICE_FLAG_PTP is checked first. Drop the
> unnecessary check for ICE_FLAG_PTP_SUPPORTED, as ICE_FLAG_PTP will
> not be
> set except when ICE_FLAG_PTP_SUPPORTED is set.
> 
> Convert the port checks to WARN_ON_ONCE, in order to generate a kernel
> stack trace when they are hit.
> 
> Convert the function to void since no caller actually checks these return
> values.
> 
> Co-authored-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  9 +++------
>  drivers/net/ethernet/intel/ice/ice_ptp.c  | 24 +++++++++++------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h  |  7 ++++---
>  3 files changed, 19 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 84fe01fbd83b..881dc9c29d63 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1125,8 +1125,7 @@ ice_link_event(struct ice_pf *pf, struct
> ice_port_info *pi, bool link_up,
>  	if (link_up == old_link && link_speed == old_link_speed)
>  		return 0;
> 
> -	if (!ice_is_e810(&pf->hw))
> -		ice_ptp_link_change(pf, pf->hw.pf_id, link_up);
> +	ice_ptp_link_change(pf, pf->hw.pf_id, link_up);
> 
>  	if (ice_is_dcb_active(pf)) {
>  		if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
> @@ -6434,8 +6433,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
>  		ice_print_link_msg(vsi, true);
>  		netif_tx_start_all_queues(vsi->netdev);
>  		netif_carrier_on(vsi->netdev);
> -		if (!ice_is_e810(&pf->hw))
> -			ice_ptp_link_change(pf, pf->hw.pf_id, true);
> +		ice_ptp_link_change(pf, pf->hw.pf_id, true);
>  	}
> 
>  	/* Perform an initial read of the statistics registers now to
> @@ -6867,8 +6865,7 @@ int ice_down(struct ice_vsi *vsi)
> 
>  	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
>  		vlan_err = ice_vsi_del_vlan_zero(vsi);
> -		if (!ice_is_e810(&vsi->back->hw))
> -			ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id,
> false);
> +		ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
>  		netif_carrier_off(vsi->netdev);
>  		netif_tx_disable(vsi->netdev);
>  	} else if (vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 6a36256748fe..3b154cdb2a32 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1305,33 +1305,33 @@ ice_ptp_port_phy_restart(struct ice_ptp_port
> *ptp_port)
>  }
> 
>  /**
> - * ice_ptp_link_change - Set or clear port registers for timestamping
> + * ice_ptp_link_change - Reconfigure PTP after link status change
>   * @pf: Board private structure
>   * @port: Port for which the PHY start is set
>   * @linkup: Link is up or down
>   */
> -int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
> +void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>  {
>  	struct ice_ptp_port *ptp_port;
> 
> -	if (!test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
> -		return 0;
> +	if (!test_bit(ICE_FLAG_PTP, pf->flags))
> +		return;
> 
> -	if (port >= ICE_NUM_EXTERNAL_PORTS)
> -		return -EINVAL;
> +	if (WARN_ON_ONCE(port >= ICE_NUM_EXTERNAL_PORTS))
> +		return;
> 
>  	ptp_port = &pf->ptp.port;
> -	if (ptp_port->port_num != port)
> -		return -EINVAL;
> +	if (WARN_ON_ONCE(ptp_port->port_num != port))
> +		return;
> 
>  	/* Update cached link status for this port immediately */
>  	ptp_port->link_up = linkup;
> 
> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
> -		/* PTP is not setup */
> -		return -EAGAIN;
> +	/* E810 devices do not need to reconfigure the PHY */
> +	if (ice_is_e810(&pf->hw))
> +		return;
> 
> -	return ice_ptp_port_phy_restart(ptp_port);
> +	ice_ptp_port_phy_restart(ptp_port);
>  }
> 
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h
> b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 5250ff29a574..28b1dc901819 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -258,7 +258,7 @@ void ice_ptp_reset(struct ice_pf *pf);
>  void ice_ptp_prepare_for_reset(struct ice_pf *pf);
>  void ice_ptp_init(struct ice_pf *pf);
>  void ice_ptp_release(struct ice_pf *pf);
> -int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
> +void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
>  #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
>  static inline int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
>  {
> @@ -293,7 +293,8 @@ static inline void ice_ptp_reset(struct ice_pf *pf) { }
>  static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf) { }
>  static inline void ice_ptp_init(struct ice_pf *pf) { }
>  static inline void ice_ptp_release(struct ice_pf *pf) { }
> -static inline int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
> -{ return 0; }
> +static inline void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
> +{
> +}
>  #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
>  #endif /* _ICE_PTP_H_ */
> --
> 2.38.0.83.gd420dda05763

Ack
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
