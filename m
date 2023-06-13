Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EE572E76D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 17:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6EDB81B72;
	Tue, 13 Jun 2023 15:39:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6EDB81B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686670747;
	bh=6ylVdSVcWT/lKRHBzCDpXPRFy1ud9xhqD2BLS7SRk+o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XiKXq30SOEanzQATsmCwh2pompFgSAuxljHo8p72zFKRtVWVQaYJ0tE5wb0/yFVqv
	 3ZlSvWeM7FyiO0pVMk/lnh25C5xQJfxRztFa2WKH1EuWRMYYrLCy+33G9DSNp4sIS4
	 fADxghfzT5DrbMKCQJSzMtMGMW4YN5QBUX5oxYrfHSt4gVgHqxNLNkQEsAxriQ6h5u
	 hLFey2PfzFts/vLX1v087Cm0M/ixgQHUTmO2VtjhKViKyn49pOMqrwrjsdKX3uPn+9
	 mA51bRcCWCO2dJiffzWoS2mCh5yccYjL67/NpVeK7A5ZBCf0+gHdQaOXXb0LBZcm4E
	 blkkykST6kd6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f2e8DYwCOCLX; Tue, 13 Jun 2023 15:39:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F130F81A47;
	Tue, 13 Jun 2023 15:39:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F130F81A47
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F7E01BF3A3
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 15:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0DD9A4013C
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 15:39:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DD9A4013C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ov-c0ICpQpdx for <intel-wired-lan@osuosl.org>;
 Tue, 13 Jun 2023 15:38:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A96044008B
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A96044008B
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 15:38:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338008685"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="338008685"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 08:38:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="662057866"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="662057866"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2023 08:38:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 08:38:57 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 08:38:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 08:38:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 08:38:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e98DCq87LWDHb1KkqT+S/X6doKCXR2MkvvjR1OuGo6FroIhaq+BYuOSzzR5at7VXft9yGcEWRXi2isf45SeS/fXz5p4egQAiu+5SckiJqVlqcPKCZUCVFxspGY4F0RYyz1EWX/nwg77JGiZZZ4vpiaxIfYWQIYgFIsPZS87b31FdE7CDkEG7BExZRQXUZ2xtjPhugpb949EF5XFDKkHGPvSMlJPjOkLc8sqmpy39HRZmimMmVhKpXfvKTNalvoEp0LMbMhI6hzkx+yR7BDY8+zvsvSKlD+wuxmbkyZ43DrbRIT0wAKqtKr4Ztv4ysNMsfAu8AIekjeBCRRTjca+mdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F0Ekl2ksmR4ucyT/fQA9RVFVYzfjNtliTcCrMnmIm3A=;
 b=I+SCCjkq+XJPEb5ESkm53dATeu6LZ1pKQ6UaWyrCZCH6648zxfRV4Gp2GobR2Ycg2MlD9sq3chb3I6NNi43OV9QIFxULnFBkxy9gK/AuhL9y6UoBGVckJUPME/X64igLuNJoebQVwAnGv8QPrXTcwVEMKkDFZIbRtFX1q04qTUJ7y7piSMv53tFsRVJ/51hG5MQnANYr66W1zh/gxjR7v1MBx7ZvnMdExMvNpuplB2Fq+/q9ZrXKhidAvM3PfgHQ/yc/5CFJdyAko8ZbuimnaF7xURXFnSYMfkFqBlJr1QI0JgInqZb8HdB8/O5HHXQYUPOTaTtVbBl1KrsLyzPY3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 13 Jun
 2023 15:38:54 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6455.030; Tue, 13 Jun 2023
 15:38:54 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Thread-Topic: [PATCH iwl-net v3] igc: Add TransmissionOverrun counter
Thread-Index: AQHZlCSRIAJsOJ7ZBUaDwOZZweIG1q991t1IgAToprCAAAqmAIADxntwgAC7QACAAaEPsA==
Date: Tue, 13 Jun 2023 15:38:54 +0000
Message-ID: <SJ1PR11MB618092B287B39503DD2C5873B855A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230606140230.dyglrbenr3geu3ha@skbuf>
 <SJ1PR11MB61804C9DEFF8D2843E1B10D1B851A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230609173838.vtki6u5kk6v6gtr5@skbuf>
 <SJ1PR11MB6180B613324BFB5C5395DAF1B854A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230612142800.76xkh7bshgb6ttwb@skbuf>
In-Reply-To: <20230612142800.76xkh7bshgb6ttwb@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|IA0PR11MB7354:EE_
x-ms-office365-filtering-correlation-id: 0ff2e74b-58c8-4419-1a23-08db6c244bb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BeH33Y2wBs6qr10lG0Vp7zuuI28rtR9Es3b6UmruhdY7+3y4XMW8EQF2gmQjideq5AZyowxaoH9uw23ugzJOtbIvK8Fk0PjTq3LKlF9A+NZ+SlIcRvxKs0t7yY9cXikFLaqPaCqqHXtG/DfK12z7iHJy8/Sjjy24vf1fquWtQyhUCpq9xFTsd9KBaX3YVube3aFT6xoMjcnrHvtD7byMQpcrN4d4VHvJTb3Nd2iyOS1GtVZmvWr992YB1j97ukvz5rR5is6qubPjO8dYGLTWk4Z40c6A+n1l/7RAxwETAX9iDYggQt9T2q9Ke3tSGWSO+t1tJWhqOn2JcdHWzIgI0Nt6aZQHf0YIDzhRd6imp6nBvdVOrVWJhDeY64ZyJ8u76b7hI9dICmtMyyLA5hlVESexsyTWTx+zqP7zxPkDMAA3hk6NxyTR1tua3CzeNO0QVfCicwMJ8hDwnTa42Yi1oMIt0MkAMTIVTaOAuNt9SuXjVcBfbfho+lCLnMs+Skznm8Ahf6eQHEuPg2ZUDQVoiPNsVuJm1Vgg3PirNy8jPh1Qf0WRKhApDahOjIywbwO2025NjsqtK/xZMbw0Ao+vsBvumRoCACctVjxjx17tJ7XkFLsvLo8ws0o9uXQicYIP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199021)(55016003)(82960400001)(7696005)(71200400001)(186003)(54906003)(6916009)(316002)(478600001)(64756008)(41300700001)(8936002)(66476007)(38100700002)(66556008)(8676002)(66446008)(66946007)(76116006)(4326008)(122000001)(9686003)(53546011)(83380400001)(26005)(6506007)(52536014)(86362001)(38070700005)(2906002)(33656002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oSiJFHVYgCL6VrhO0er4i6yPYVFeEjUYDGZV2b72eY79Buon7YDBdhqOL135?=
 =?us-ascii?Q?wVDg5TDNdyF5Y8Zth4cVN6bnkFHQejzlpWe0Bu2X/Jx82ZluFq++/90GLi/W?=
 =?us-ascii?Q?quAd+KtkKgTpTb6418G9NHxTNaLKUAjmhWcRecclothwtJ4L3dpEvSjNVdeI?=
 =?us-ascii?Q?1hIZmwI0HlZkNkG3ynS9OCg4a5jVo4P2oosBabDTLvFOHvLQYrn/orAgiCLv?=
 =?us-ascii?Q?Q49Ypn65UwXSgAWrAcnpTZebdAMF89uvd4tezNBZsCjYo1UpCLimhwVcT4nb?=
 =?us-ascii?Q?YWH6nvLFi6KRBW10O7N0p/aHc/8VdMwCAVLKmdi5mY8DnYiQDS/E3oPGn770?=
 =?us-ascii?Q?2biPmuG+oaf/LefISUqPasJV5PQPy917z2F7Meapzaa/EKvFiYPBOYR1uaLt?=
 =?us-ascii?Q?2dR9hZ1prcyLFbhMoeSUrjlqJoFcFGeb7F8S9IshgHUf6r+SRfbt9rDh8f5x?=
 =?us-ascii?Q?qTTmu6V+na2Aaw+fefkV8AbJI9E4S3JiFcNV9WPgA/fxQHNPlqgHE6OrH9d9?=
 =?us-ascii?Q?Txn89ODmJZ4hoDPxijeTHLN8UTDAapTQVgrjYcotzYFK8WVD1ih9kJTWrcTo?=
 =?us-ascii?Q?TL6xR/15f1WYSHLOj3m7Yjk4vqNQ16EiyxXmzDTuMcJwXaQeLNzjGFzSrJFH?=
 =?us-ascii?Q?cWNfZlRhOkCILGJaFvQsSGjkPr9RWE//JcPRLMLT2eF066E4mJrEFAYbmTG6?=
 =?us-ascii?Q?hzIj/CCE8InrkotC3tv1X3XXipxLBR0fZbal5kXeIma+GSR63Xz9c93Vzotv?=
 =?us-ascii?Q?0TGlrFGgyHeS8viS/y5SLL07I2yvyIws/weuoPUrA8Q03+Wdp0gSXMIHAsVi?=
 =?us-ascii?Q?wnRJ5G68u5iNRiZRIDslm7YsHdboxlt8TtJpBN367VABnMeLz3sI9h2UajWb?=
 =?us-ascii?Q?EV4w2vQtXnrvaNoTUviERfOlboKPDyQqegwbeRJ68VuG0Gg/h8FBHwj9J6yN?=
 =?us-ascii?Q?To2VLUrjbuN+zEz5cQ2phvDRL4AiGmnc+G8AWkwTmdjuh/Y6IrQk6Lt+ufHB?=
 =?us-ascii?Q?D438+HaaueM9mw7fDWEu3zS4cWrhdOmbgqrMj2XkpMjBiFb/v8YFgNWqUJL+?=
 =?us-ascii?Q?ooadOzygmMhP6Lb/RF900UFs83PiZYQiSIi3yWTTf9t6mNw0M5RvKJxxHvWi?=
 =?us-ascii?Q?0y1PZ9GE96judp+iXuBUqrok7gb9kykX92f7HYl5Niq47aQ8mB7lnxSTXMlC?=
 =?us-ascii?Q?4NUoWninuEjvla4O1PN0Lp7iUKyanE3rLA0uDSHf4Gsrd0kY6jmjp8Zw0WG2?=
 =?us-ascii?Q?xJhHPwjMV+2gaGvE5YK2g//lixDPHEQaonMXDYGIIA85pqw2c0vWCASLu1ZZ?=
 =?us-ascii?Q?ixjc2i3jvwvP18L4Pdp68V3MhAK8nOnpDPtH8JEATfZi1k4bzikUk1QhT5ln?=
 =?us-ascii?Q?n0LfaYmWdeQIZTTcJAfph7amBMV89ymM37RhigmMXd5IujHufXXhrZzfJJPo?=
 =?us-ascii?Q?RnOXOkkoDjli1qns0ci2Bt8eHpIEPZPRc7KNa5oR8KN1Y/mWVClCfH0ks48H?=
 =?us-ascii?Q?uLPBIOGPI8FDb7wyc406r9RCis1xRoFeyeAFFK1+kmowiM9Dfc+LGdyZzRM1?=
 =?us-ascii?Q?db5alYOIAHGh+qTYbijqsXayukqydrKkVqdg2iMmQ6qvYhTtIfLIjvUpup20?=
 =?us-ascii?Q?5YXQV+2clhNA00cGIGah49M=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ff2e74b-58c8-4419-1a23-08db6c244bb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2023 15:38:54.7188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i33W/BS2JTPXS7ZOOZ4AoXPWkvYO3TzfQWquBb0oedIquzTJGF6GFHlwffc7t4Zu0/+4COTxwEqxBq4hgJ+KbxaBHRjIh/+2gxAuC7antmZS0TExYPLR5w1VziZDY2dm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686670739; x=1718206739;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MOLYQVRGXYlX/3UWIpeouvdUhxlQO1gcu5itp5zI/EA=;
 b=Iyh/AD03HA3N0wol0xNF+rMpCBZ0bRFOU205Wff2/0/wlh7mbLnHXDym
 +ENTu6ArBk+IUaS8A0AVDeJ2zWsqJSCsUzFd4fZo/9PhxvWmLzOMjPhQD
 uNusvEcVwG0Z7fgUGF9E1tc6Ujrv5qsICF2TSrLoFgAOi1dwC5f4r923s
 9Sis4djYRy/TpdrqzTcRChRiRE8c/ZOH3vJIK1nYn8US/7oMNYma3v4aF
 cDNHMOl9NKbsrY+19QKBBAsoj9n+E/QrBeQibxTebTLxgKlLz2h11Br92
 rpPIFkr1TV2l7IbheeMZ0f2wbyCoJa6WrO/ILVJmrtdH7o3jXUr3rE5nu
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Iyh/AD03
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vladimir,

> -----Original Message-----
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> Sent: Monday, 12 June, 2023 10:28 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>;
> Neftin, Sasha <sasha.neftin@intel.com>; tee.min.tan@linux.intel.com;
> naamax.meir@linux.intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: Re: [PATCH iwl-net v3] igc: Add TransmissionOverrun counter
> 
> On Mon, Jun 12, 2023 at 03:50:19AM +0000, Zulkifli, Muhammad Husaini
> wrote:
> > There is no HW statistic count for transmission overrun.
> > I agreed with you, when this bit is not set, there should be non-zero value.
> >
> > When setting TSN mode, we now make the STRICT_END flag mandatory for
> > QBV operation in the driver code. So that the transmission is only
> > enabled inside the QBV time windows and obeying the STRICT_END
> > parameter of the queue. So we can expect "0" packet overrun when this bit is
> enabled in our case.
> (...)
> >
> > Yeah. Only HW could know for sure if the transmission is overrun out
> > of QBV Window or not.....But HW does not give any HW statistic register value
> for this.
> (...)
> >
> > I see what you're saying. However, because I225 HW has this STRIC_END
> > bit option, we can at least guarantee that HW is handling it where
> > packets from the queue can be transmitted only if they are expected to
> > be completed before the window of the Queue is ended.
> 
> Are the people doing the certification testing aware of the fact that your
> hardware does not monitor and report transmission overruns, and thus, that
> the counter of "0" that the driver reports may be confidently wrong? Are they
> ok with this?

No, they aren't aware of it. They will just query this counter to determine if the 
value has increased or not. The test plan does not rely entirely on the counter.
On the receive side, it will validate all frames for the traffic class involved. 
Any transmitted frame that is not received or any of the received frame 
does not fulfil the frameEndTime criteria will cause the test plan to fail before 
reading the overrun counter again. Since our HW with STRICT_END bit able to 
fulfill the criteria, we can assume that Counter "0" is valid here. 

Unless HW fails to meet the framEndtime criteria  and reports a "0" value... 
However, in this scenario, it will eventually fail the test plan.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
