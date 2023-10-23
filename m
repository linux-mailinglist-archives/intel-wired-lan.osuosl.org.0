Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D23F37D3159
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 13:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A658829FD;
	Mon, 23 Oct 2023 11:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A658829FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698059294;
	bh=LVRGy25hTG3plalUaWrMg1I6LnbftBOBor/oJu4tsoQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vCpSDdQdJXHy9T4UzUeeATNpP8zdYSZOklW/KWvPDWOWhMIAUF232ZeTzPpxJg95Q
	 GbjHay74XtC8Bm46TiX22/vczVxIpJS2CfBt6BH7GZ6ixSabJr3c+Fg28snaa70NRn
	 +bI5QwcoW5oa02/7fG1rpN6J8nMv3h/0heJFwpzdVLoX0jOuEsJMnX1nrN+GV4Ti3S
	 VF4nKI42N+Sz5+s+Uhf4+30yHIBzS8E5HfOodH8xIgaEwlJP6TwIEKLU2m4sAcpE8v
	 gTOmQcm5dkT5AFpFiLZ91TIGwSH+Wsx/Zw8Kw8/NikQ9pGG20xR9aKc+johuHfcJgU
	 GWG/KiyAUkh6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jOhnwNKC84Hg; Mon, 23 Oct 2023 11:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43DE582371;
	Mon, 23 Oct 2023 11:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43DE582371
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76C6E1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 463534056B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:08:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 463534056B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Vgg-OkPmjOi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 11:08:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 164924013F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 11:08:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 164924013F
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="453286403"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="453286403"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 04:08:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="874675216"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="874675216"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2023 04:08:05 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 04:08:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 23 Oct 2023 04:08:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 23 Oct 2023 04:08:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mu4Aq3UcBOzFPqZ2laSABYzvvEAjdnvPCPz8oSa/cbQKH8BU8Vf/92goYw0VtetWbGSuT4bDq2takeF6lunZBj/6GAHMJJAZbtw6RSrztoLvj0NH6UjdcpvqCdlUPrPAy0yKwm9+Gr/A82VKmWwYXOtn7ddCFsXhAm3145meP/gB5Jpy2F9rxrqDIvEyn1VnnQKJm9NV97XY6B7QCETJzNS7v5RxFyYBgIAOuGgWOECF6DVmqxsUbwdR2MF5n7hA8Wzv2cYmNDHxvPI/NBWX37FEKl87Ky7T3/x87m8hERED+pgd1Uc/CZ/WaRm02WkiouXwoF0W+RAiGkEQbLTegQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sq8pubhDhof9Py8EmYmIKhIED7jnerMcX64S6x5L5Zg=;
 b=hovISb/KC7BXU79KOPfK3nhUfLwwRxqahMIOemy30sAidDuFyCtZzBwcjHDoDVIxiijJb4zQ0/EPjjA9n8jua3rljEOzS3LupBbHy3MVOm/zULuSXDsA1nEl8t5htmSNMmDA/EC+nPXN0I8Y4/60d1deryZYRyC8Z9DaI3iqb2sxl7btmbsaC5QvsLgFxm8jFxjub+fDblcDiKU59nGYHepGrJUYLa52auX6YL1kH15dJ1NqHSMtPP6/qfoEa6QqEoqLGS3LewlFHmhZ6I5TyQaga7uv4fKbrjy22/etTAQ7O+cNxqom+f+MKEZ4QUSaHGuPjwbYXhvROcNxjsH/bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SJ2PR11MB8402.namprd11.prod.outlook.com (2603:10b6:a03:545::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Mon, 23 Oct
 2023 11:07:56 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6886.034; Mon, 23 Oct 2023
 11:07:55 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net] ice: lag: in RCU, use atomic allocation
Thread-Index: AQHaBaBHpIP+al7Tx0m3d6QUKz06MbBXNnhA
Date: Mon, 23 Oct 2023 11:07:55 +0000
Message-ID: <MW4PR11MB5776107A0FF563D50E011CE0FDD8A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231023105953.89368-1-mschmidt@redhat.com>
In-Reply-To: <20231023105953.89368-1-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|SJ2PR11MB8402:EE_
x-ms-office365-filtering-correlation-id: c87bb677-0076-449c-8f34-08dbd3b84f39
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kEFcCJvSLmnW2Xxr3VRXQpO4qbJ9yeT/hCvuLPlPkdKwg5ZhfkSvRPOPCZDMGXnGwwtnR5TSL3pHHO3I03u6Uep1qFZqBX5Oxnqh256ekTbYIPw/WD8kDMOd/JKpYKOxJZu16ephPOdG0wuNqSE0FrK9x0oNdxOa0UNP/A6dB10uKC+km94NSc/rIqL9QImnMRDO5LLi92DOF1WHKNp7nBh5GsniqRdppyUaqOm3zKmt2+L/Exq1XVWXzOsfQg7FRSje58by6E1RfIOQ5m2+Hzkh1LX86wI05p+RkocMoQAI4cJ4TahPF9Pi/04/Q/x+aqgLgEjH9dDU64aKN4b8ZZZtC8IMkbvFu/s/khI89Q5ObD5pEliHJsoBMxaP7VSR3Ygnu306d5rqwZCaVwrSyjCCuMB9V8aJ5xr9igpKjH0Dl3k5o3VZPg9HQO/IokSKBDNKVlPv3KTj4MkU4EZne74YdC8nPS+wkSUX7XkYX/qvOjZ9TvHDCRro/0PFATbJTodPEAtrYQQVEug+dgWVolpgfkNXoGYEqJQeyfi/bokcxaHRQLYIz+ltgzaPGIHGheY37ZHnmXZN5XxySbUCg1c239jQGRCOwFHfeENEIZBfXodh8vHpYK1q0gSi8h2X
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(376002)(396003)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(38100700002)(7696005)(6506007)(53546011)(83380400001)(9686003)(82960400001)(71200400001)(55016003)(38070700009)(86362001)(33656002)(2906002)(4326008)(52536014)(41300700001)(8676002)(8936002)(110136005)(76116006)(26005)(66476007)(66946007)(316002)(64756008)(66556008)(66446008)(54906003)(5660300002)(122000001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UFdckXrEgamXesMte6YljHKtZwuYoDSG5lrYeaEeSM2rx262d+vZ8dDHYHvU?=
 =?us-ascii?Q?uf94KqMJRKp1Sda4ChJQkH+69V4DUbQMlXC5M1ro+Ir31q+xQxL9r7a0F/Xo?=
 =?us-ascii?Q?Ea8iwHG3LXc2KvevMajFUeBASD8I/3jIcn6AvIy0OP0SdJeutwoG15Wc9nHc?=
 =?us-ascii?Q?DPkNMCpWZgRuZQ4rQtGzrMA1/wyRHkD5sJBvMSqGDC170dfkSXP+PF7S3xUb?=
 =?us-ascii?Q?ty61j67640WfSdVPZNNXLGPlC+DLdsIqtfAf12ayXOjvgecEZ1bYFGdP8QWG?=
 =?us-ascii?Q?FhtTDc7Hs/4N2SG91VD8mdG2gRZvqcL8HeeqeQON/xBm5kVNW/xHbD+WP75a?=
 =?us-ascii?Q?udCuyz+4Vt1g4XDORU1e9rfEMpqXqmODjbHBiqQ34WmLMS0GtvjGSudEKfb3?=
 =?us-ascii?Q?j3pzfL7pogVW6kBSsYBe2f1pA+dR25Pqb9rESbxkDanZvaodpyKkWVcNST2Z?=
 =?us-ascii?Q?rBjikZWfegIs7Di64YauQVXxMyq3VVMDmDeWqRYAOi+V/c/t2hMsmAu0O5Tz?=
 =?us-ascii?Q?g/5+SxY4sbe52011UlzQOq6Ve3xBJzrNDnSkjVPKmViZj5WofxeFclKr+UjL?=
 =?us-ascii?Q?nPrPhq9eHIlNrceID4EcjLIXRRusXvetV0Dm9WV7hwIvr74kVVV72XEgfjp3?=
 =?us-ascii?Q?UUExexCWFBEyMeu2kLy6ARiXgjfqjE8w5Ak8YA4f4pKzZytSvoi7893c5Yxd?=
 =?us-ascii?Q?9m7KgrX3RRAuczul4Paiu4xqfsuC7ZFy4/ra+hk40hZQL58T2YXHlR6Z1OY3?=
 =?us-ascii?Q?3s1aELjlR0+M0KQ02e/VXfTviZ/UIKqHajPqL4oc8N+tIGwmwfeP4xh0CP66?=
 =?us-ascii?Q?ZDFLWp2BY+DVquqBET9TTJyxqA4uIhfWcv0v2ebMVc5XUQHnKDI0dAB5kLEI?=
 =?us-ascii?Q?tg10lsM1XHqEtS1XlidMKz8jJNV3W315CM1ajQeBopo6Fu5PR/hHsufT6d/H?=
 =?us-ascii?Q?mQ0iBE1ifHDJu7gVo4Wl4LD+KTPdiCYEGF5WFD+fRWm7Hsq65FWgHNUFslMk?=
 =?us-ascii?Q?U+6L7LVDY7hsSw6J7WMMZL5YNxwEfw1VMpYgOmmsfGv+te8cxKL3/Ufy6sK1?=
 =?us-ascii?Q?Xppsh4YN3GQbhAcKBPavBFlu27f0L4CXdodPvRr2+f++RMyM848FkJxjDq1a?=
 =?us-ascii?Q?2GuQrSR95fRmSri1m9nbbAjYmmO1lwW+0PTOFVPTAkPu7fxQ5ZKRtbSxgKWr?=
 =?us-ascii?Q?P2tab2n2XUlDU+o7XhFYh+N/9IFb2hBhmkKQUnDWQLw1Breymf6gUArGTLKb?=
 =?us-ascii?Q?coQE6l8bHWTTI+2ODhymgEpq/+NYBH9aTjM8w51woIZDxItbJrmGLhyKlvjE?=
 =?us-ascii?Q?SVkpx9mv7ss6XTMxUOrTX8cJoyw3c0lsUHvS2Va/rrl/gxC9t6wpeMlhQhXZ?=
 =?us-ascii?Q?qpHsqQScKOTHqotLdbuCfJT2J1OG1AaWAJVcUrqJH9Iox6ozAuhZujrUGh1N?=
 =?us-ascii?Q?CNKNXhMqRx4kNjPiBhEriQn/XnvDprABfvd7OztVHmEFohJsDf6aIJaqCHkt?=
 =?us-ascii?Q?ViQPW1tM88a7p/SsjpE2Wtbz9ZQ5EKPSx0VIyTjLoaIuLCKfFoCg32GWm4S9?=
 =?us-ascii?Q?87M9gov5JIzpNl6XOLsTbcpI1yXwDFBd4Sb9g1G/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c87bb677-0076-449c-8f34-08dbd3b84f39
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2023 11:07:55.9673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dihNlViWCRJsqa9D2dUjL7o2+uIEqRU4qDjyDel6P2X8Cr0emFPxKFWtdqbTMCpZIBcNFvUqiN2jiXDKPWW4gm6joLp7n6uwZ2/h2ldbMUc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8402
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698059287; x=1729595287;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2d6CmGmvgnZsF2pRF235JfuwZ8MhhOspU7IJpZYaVcA=;
 b=Y1L0jeLyVpC6P0wzV48a0bV4DXgpJRR4NWKjhvhvCa3PYsbDzYKejFuV
 CUhnw385nhhfcRsXcNOGXk6vvHuiWGlUoKlo7nptb1f3KiUwqd4OSrDh/
 MoczLZyTaAd7Cky5aIwqwY/bal6022ayYy3gUJW37c1wTOKNFhIk88+H5
 bagbag9pCyeUzbDdDaUu0B8pfOqPzJfe6v/9SWZSaZrgcWfeXPHlVxxXQ
 EEvI5ZjqS51nCipgYZRwnnYJBxmgx9i/kFOSj4lZll74qP6golpcthKF+
 sCt1AyB0PFPK1EGxwCViuxHU9mrUjhFHcgV4suCWJL2faC5oAuLFxd6jQ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y1L0jeLy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: lag: in RCU,
 use atomic allocation
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
Cc: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Daniel Machon <daniel.machon@microchip.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Monday, October 23, 2023 1:00 PM
> To: netdev@vger.kernel.org
> Cc: Ertman, David M <david.m.ertman@intel.com>; Daniel Machon <daniel.machon@microchip.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; intel-wired-lan@lists.osuosl.org
> Subject: [PATCH net] ice: lag: in RCU, use atomic allocation
> 
> Sleeping is not allowed in RCU read-side critical sections.
> Use atomic allocations under rcu_read_lock.
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
> Fixes: 41ccedf5ca8f ("ice: implement lag netdev event handler")
> Fixes: 3579aa86fb40 ("ice: update reset path for SRIOV LAG support")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Thanks Michal
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
> index 7b1256992dcf..33f01420eece 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -595,7 +595,7 @@ void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
>  		INIT_LIST_HEAD(&ndlist.node);
>  		rcu_read_lock();
>  		for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
> -			nl = kzalloc(sizeof(*nl), GFP_KERNEL);
> +			nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
>  			if (!nl)
>  				break;
> 
> @@ -1672,7 +1672,7 @@ ice_lag_event_handler(struct notifier_block *notif_blk, unsigned long event,
> 
>  		rcu_read_lock();
>  		for_each_netdev_in_bond_rcu(upper_netdev, tmp_nd) {
> -			nd_list = kzalloc(sizeof(*nd_list), GFP_KERNEL);
> +			nd_list = kzalloc(sizeof(*nd_list), GFP_ATOMIC);
>  			if (!nd_list)
>  				break;
> 
> @@ -2046,7 +2046,7 @@ void ice_lag_rebuild(struct ice_pf *pf)
>  		INIT_LIST_HEAD(&ndlist.node);
>  		rcu_read_lock();
>  		for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
> -			nl = kzalloc(sizeof(*nl), GFP_KERNEL);
> +			nl = kzalloc(sizeof(*nl), GFP_ATOMIC);
>  			if (!nl)
>  				break;
> 
> --
> 2.41.0
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
