Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 812DD78840E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 11:49:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B6D083A79;
	Fri, 25 Aug 2023 09:49:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B6D083A79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692956975;
	bh=/iCwmGGuQZICbkkLpenaot9CE2EhePg6TLyq2DNtbjo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VIOJuLTzAWakwar5XQwQHbxFs3/NCXUYAF1mxW5tsPCPKMkUvJeTgEgzutWIvpHD9
	 xWZ3YYDpg8UIjfTifA7RGDUhwlYI5o1J8YFtdqrGRnFI/NNmn3YxvctuITI9761xlk
	 Y3eoZuhPgiY2f0WARcW/VCtVeAcQBD/d0fTHNd1zwnTy8aMOuqOjAQzgjc7GcLn7zu
	 2h95PP7AQoogh6rUIOM7WxzQQDY4mYisyQGqw6JqC8jKyVFEntm7JB5NR5a+Un1G/0
	 dxqQncLor5/k2EyQPBSLlU5GLqlLN8eb6vRgNY6nIY3Q5lg9BpH8q6ZuWknYtSL9iC
	 4vA5I67EbfmOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VaXhE_Aw_XhI; Fri, 25 Aug 2023 09:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 085C883A50;
	Fri, 25 Aug 2023 09:49:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 085C883A50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E62151BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD6F881463
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD6F881463
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TNojYzwi3_dN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 09:49:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A52B81425
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A52B81425
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="405676976"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="405676976"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 02:49:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="1068182681"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="1068182681"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 25 Aug 2023 02:49:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 02:49:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 02:49:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 02:49:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 02:49:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ab8JOpayJ+RrEXiFOWyFKxYCOGVIeQDUKEqxsi3u2UIXtEhRlCJp8zWI+KTn43wkuIEee797qDi39o72uCA2RA2MVI9wb42A3cuUgSJCa+tpUS7qRTAh9IURTPS94jQ5PGjMLnk5gbIN8lONcFbU3NyIPjcOY0TB/o3LEvCqEzwr4hU+qeigWw7kuB/eGpPSad7wzyd4NwkXtq9CVpo7k9HCj53aiyl7Rs3bSEw7YXcy2vXhJ7mD+2+uijoSsh5nfgoSU6yDpEVqw4m+vK0tmsUvFZVR7TiGdULQrXkIg0FNnrMKZGEJTg6PUFejlfcTXvifalkGSLBwIbaxvmwA4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vi/z6dxO7QNxlp1Y9/ZV6aVws5cX3cyrIdw7zRqbNYc=;
 b=Ad6NZ5stNS5sLr7XYbxnMVYk6SKeFq6d5EmRGXcyM9sbsVojSqZV4Pz1WH9N9Z/Pdeyfaoow2rPot4C2JGKegTA4C0EcA7CUkN1lFAe6Tr8b7kHQll3DjlwuUfpe//HFoWSCYjW4/MabyleEyNJfsN2KDrctMYppHIdgTIOeoZyQa++3lK7eOcG8JfXZPFzS7FEL0NYjExn1EgjBa4UcDhFJZFoAJgeCjN3yG8QXdiqAHCJoJ9O5/EYHvJVAr60De61aPbl/C+2EJBEQbfECo3HGz4WKUjsRdg6EoL7T2x+hWduyWsDYzc2BXe/MVcmZhFA/VBOMZIGIClVCaxOnbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH3PR11MB7723.namprd11.prod.outlook.com (2603:10b6:610:127::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 09:49:15 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d%4]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 09:49:15 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v16 2/5] ice: configure FW
 logging
Thread-Index: AQHZ1hBmXtQ3sxlkUUGovaUhjVOU+K/6xHgw
Date: Fri, 25 Aug 2023 09:49:14 +0000
Message-ID: <BL0PR11MB3122A2ECB1B744223370885DBDE3A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230823222152.106-1-paul.m.stillwell.jr@intel.com>
 <20230823222152.106-3-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230823222152.106-3-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH3PR11MB7723:EE_
x-ms-office365-filtering-correlation-id: f69a213f-4f72-4287-3488-08dba5508ae5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M7pbIhNj6hEpjxkbG6TESIqOO/l6p56Nct1ir4HWWopFdJCpRcQfIiEWS5StZtYwzEPJKwdEY2xHrAoTsnkOhp1RbAEQOSkEXNbHS+7Wr66Z9t0O5A46wKGM9J7ev2Xvk6HDxLpwiFlj2lV/34ZKSTCm52sBjZV8ucHVeXNoJ6tXyIOH6iZqzecgmm/eNQ4tTQcXBcfvEvrkb/tWdON+Y1xhDVpFNRxWxJlaDD/gsm6FvFrfvAOPKD/F2yIfkKz2LcaNzY/KV6eNaTJjE83hi2MoDukNIDeN9OR2at5oHLIIg9vU+won6WSgfxpn5/4sLsfz4OfPmcP9+uZ2/r4kr9uryE2OVw1jxHxL6Ckn8UfEudiZm8z1YEZq+eTMEl/71O/xkhAISBrJvbnzWfKO0sIIBB2DeKLYH/GAMLT6zO9gLSFEQN4ySBa1MRHjgRQUXXSAY5ysOSIGyncfbUqeW9DZK2pEWoOiOBWFJDkN70LZDGRYeqzdhyrEKgPhsWj/qAkXfpPW9CI+0pdwUIYJJh2yfvl1RfAqs3u/kCCuISlh/KRYcodQjMkjgJI3b08GzehmCtGyFCe5OAMQJE0i55D9hXbHBSUhNZwu2R3aTJtSDMY0uME0LLaETGFjhDmC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199024)(1800799009)(186009)(82960400001)(122000001)(38100700002)(38070700005)(8676002)(8936002)(64756008)(41300700001)(6506007)(53546011)(33656002)(316002)(66446008)(7696005)(66476007)(66556008)(110136005)(66946007)(76116006)(86362001)(71200400001)(9686003)(55016003)(26005)(478600001)(83380400001)(2906002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Iw5dpEotqRrHaqnq5g4u40f0lKWCJUV8Hlut6mp8yzqUgagGLZFG3k7mD8J8?=
 =?us-ascii?Q?YnPNcTQmVQejwkX2uoWvWQkVKmt0pRSEmCnkB0SH50FSSunA6Ja6io09AZWy?=
 =?us-ascii?Q?VJ4iqEtsreWPZ5QHERYsBb6nN9RUp0asQxMyUNStncqSp4Y9Of/Azj4DC76q?=
 =?us-ascii?Q?S0aJSMvxdj+uEUGJAKogABkkfek0gbqxA2M7fqGkeWZ600xaoBae+KHFtpEp?=
 =?us-ascii?Q?TEgO2aYs84yKflFKr66VQrE/Ejm09vReBD09KM/VDtN1x91nkIZ+E/HqbJf6?=
 =?us-ascii?Q?4wFTNNVGc1vCIhIKYprpXrx6D5+U+fdHuzrFq4H33ggV9penTf+CIG1FT454?=
 =?us-ascii?Q?zQB4RLXcuyq+Rvlr7dMMVlAIWyKz9PWS5VERyZlTqWeYE1D8jYZlx5ICQ0Bj?=
 =?us-ascii?Q?G9Vz0D4p09mdI2FmqY3MH+zJK3nxgs77Fvk0+hE1VL2wuq/lbbVFCNA7s0Yr?=
 =?us-ascii?Q?OIChJhmJNKJ9QHWrUdTHORPjhetQ4Ua/PQliSny98Ws9MTsIhMrAJcLqZEP8?=
 =?us-ascii?Q?EW5AtJJSJfcqOHYifp8dLLVDFnNPtEdx74aQwTZ9+qrUezy5bk5/hQA01kKD?=
 =?us-ascii?Q?g2uI7+XLE9+SnDhBfAe1POQe3cnRww3VIKHPfPUBeIslxyXhUIxlRwf8OzQc?=
 =?us-ascii?Q?mAOc2aI2ZnnJ8F79B17bKx/H+Y13freqQX9QHwhwgNT5AD+HNZVKGngPhgK6?=
 =?us-ascii?Q?LhN1s50h4QFTKUatuO68ni4jdt6UPTau4NEix9OUoYa+zr4JBp5z2Ql+3gLA?=
 =?us-ascii?Q?mFLujNXCla641hTrbgkcnXJ2AjH1i0DRgBrpMGd3pzMPEV1qTxOfAr+TBt3y?=
 =?us-ascii?Q?4u4HAol8a+Z1yOeS8iDTIIeuUNCESad5t0TRie1Yc4k/uKZT+VY9wKRMjgSl?=
 =?us-ascii?Q?zVBHTKMRNc1bhQpdIDzyTpLRTiFwLrF6EUVSwhcthYA4HETQa6lCfpbRwb9f?=
 =?us-ascii?Q?TugMg5xPaMedIoTDXbzvZ9tq8K4d/bHtuyNt+C9xcz3GfwF+smVkBYSLFTbr?=
 =?us-ascii?Q?5j2sU4FW9zNYfhjftfNgxfQMjLs1OoHs/odcPAQGgQ/h/b86s3pUUrrgbYaA?=
 =?us-ascii?Q?gOs/0/PQ83ngrocM16HxXKcvWsWYcELAN3MtuTZbaNZhrD0K80G2Sv0hlpNq?=
 =?us-ascii?Q?uFT02E9qVEvanWkWUxZLO/HUTohgbaDL33DQpWjkMIN4oVojIN6WUi2rqMC7?=
 =?us-ascii?Q?PO3KBfOCEb1+fiyYalLg71mHbQ2lWnLzcsC2YS3KalDQvlTrbKf9JLCh2qj4?=
 =?us-ascii?Q?SN+Q01vJYrzgIz76oZrklFuDB1ypzFFMo4r7g4TDb0fWRqjnN83nSkZdg72l?=
 =?us-ascii?Q?Xtdj3X8UGXql3d+QQ0agaLImvav5UDa7LdJu0BrBYXQVvDela4TnRqTxfz65?=
 =?us-ascii?Q?aiBzh0VATcTri3BPF7Vo2gAtpwV2tWRjcnJ7CyrPTN6xk6/8D81trytLyaCj?=
 =?us-ascii?Q?MtQQAllgzAtbUJEc3QquSufC2UCCZhXe/SMcoNQd1klO7Phls2Ic4BEgMZtA?=
 =?us-ascii?Q?Hoiykuhp2AmLNXxG6LnefsRvcM3qXSwwHI9erhXpZ+OXwwxiN25u0Wqf7F20?=
 =?us-ascii?Q?IwyC2CNohiYdhs00GIvzmY6c0F+N1b3gcI6dHge2TJTt35BLPBOdJ6Lb8LY4?=
 =?us-ascii?Q?fg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f69a213f-4f72-4287-3488-08dba5508ae5
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 09:49:14.8917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OSx87Ri7p4h1P6rcHsiGpwBa7Oj8eusY9gq8yip6Ff852Mh4/YNqeLorWxS1D8DlfEoWC2BI/Vm1f2g5gMqaGB6834SzAoANvCpzl41ciV30w5JHSX9piZmYYSm1DOX7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7723
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692956964; x=1724492964;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=I5oqXV+fbauw3VnjQwih2SgzWVr+MISjQ1qSqKT89Ck=;
 b=PZDu9bpaTqGMCGC84wK4KvJe34ciQfbkx/KXjKNIfTwX07zwAAjEW70g
 bXOfISGQBAZyEP1AOqrNb7hhaKsfxT18aXp9ouYw5arAd8+hIdJm5p63F
 4YBxhKn7epjRZRe/DiTSHwhp+htA41qhcck+jwTICiqxR0cOjUXW8vMz4
 ZYqFj8si3M8fuVNJuI56LdurC3H3rbCQcFcGd8bo6wDA9ePegOCbIT2Ya
 GpLS1l85DL3LLS5WBR2hccoqcrSswyIzZaftRbW9TG2KLNxwsjI4Hih/m
 /9oTaoNKquOcVie6HodYkYXuSjncvRilB/FxZQbA2cjl5vAR3V3JAC4MT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PZDu9bpa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v16 2/5] ice: configure FW
 logging
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Thursday, August 24, 2023 3:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v16 2/5] ice: configure FW logging
>
> Users want the ability to debug FW issues by retrieving the
> FW logs from the E8xx devices. Use debugfs to allow the user to
> read/write the FW log configuration by adding a 'fwlog/modules' file.
> Reading the file will show either the currently running configuration or
> the next configuration (if the user has changed the configuration).
> Writing to the file will update the configuration, but NOT enable the
> configuration (that is a separate command).
>
> To see the status of FW logging then read the 'fwlog/modules' file like
> this:
>
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
>
> To change the configuration of FW logging then write to the 'fwlog/modules'
> file like this:
>
> echo DCB NORMAL > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
>
> The format to change the configuration is
> 
> echo <fwlog_module> <fwlog_level> > /sys/kernel/debug/ice/<pci device>/fwlog/modules
> 
> where
>
> * fwlog_level is a name as described below. Each level includes the
>  messages from the previous/lower level
>
>      *    NONE
>      *	ERROR
>      *	WARNING
>      *	NORMAL
>      *	VERBOSE
>
> * fwlog_event is a name that represents the module to receive events for.
>   The module names are
>
>      *	GENERAL
>      *	CTRL
>      *	LINK
>      *	LINK_TOPO
>      *	DNL
>      *	I2C
>      *	SDP
>      *	MDIO
>      *	ADMINQ
>      *	HDMA
>      *	LLDP
>      *	DCBX
>      *	DCB
>      *	XLR
>      *	NVM
>      *	AUTH
>      *	VPD
>      *	IOSF
>      *	PARSER
>      *	SW
>      *	SCHEDULER
>      *	TXQ
>      *	RSVD
>      *	POST
>      *	WATCHDOG
>      *	TASK_DISPATCH
>      *	MNG
>      *	SYNCE
>      *	HEALTH
>      *	TSDRV
>      *	PFREG
>      *	MDLVER
>      *	ALL
>
> The name ALL is special and specifies setting all of the modules to the
> specified fwlog_level.
>
> If the NVM supports FW logging then the file 'fwlog' will be created
> under the PCI device ID for the ice driver. If the file does not exist
> then either the NVM doesn't support FW logging or debugfs is not enabled
> on the system.
>
> In addition to configuring the modules, the user can also configure the
> number of log messages (resolution) to include in a single Admin Receive
> Queue (ARQ) event.The range is 1-128 (1 means push every log message, 128
> means push only when the max AQ command buffer is full). The suggested
> value is 10.
>
> To see/change the resolution the user can read/write the
> 'fwlog/resolution' file. An example changing the value to 50 is
>
> echo 50 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/resolution
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v15->v16:
> - moved ice_debugfs_exit() to fix unreachable code issue
> - removed CONFIG_DEBUG_FS defines because they aren't needed
> v14->v15: changed PAGE_SIZE to ICE_AQ_MAX_BUF_LEN
> v13->v14: none
> v12->v13: pulled out 'enable' code and put into a separate patch
> v11->v12:
> - rewrote debugfs code to use separate file for reading/writing
>   the configuration status (fwlog/modules)
> - added a file for configuring the resolution (fwlog/resolution)
> v10->v11: none
> no data on previous versions
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   6 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   7 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  80 ++++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 450 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 231 +++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  55 +++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  21 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  9 files changed, 856 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
