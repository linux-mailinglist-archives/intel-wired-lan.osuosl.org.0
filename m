Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFA672C9F1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 17:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8673484130;
	Mon, 12 Jun 2023 15:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8673484130
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686583552;
	bh=AuYfKW99nPgLs/F+gUKIHiAudQ+tx2UDKjJa5JI4UuE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lVR0fPqiMTIRtu/mLl5ldYnVoRlk/51PfKbxXUs7z/kiAE/nC6mJTUF9jwEdx1qwh
	 wgnf+HxQz8BEvBejmFuWwOEfJMSCuhHc9i0zl+cxdEdtJvPzXPPPuM8Bq9vkBF8XWx
	 imp4ECmFco32naAZ28oblnFmTGgSQM7dBiJq2Y+CHNxy6HGqObnVIFoJ96rrdB0mco
	 pYgQ4+nXdHwr3cvPP7gCEcW0u22eGgos1Mtp2jgpzdItLnTwyi90jP1gW/FgSIvl4a
	 dmL4JS03bL+6eiJlk3eHEiqZLm3k9tWXxc/IYkNPkeaBT/xnmowQnxN/UeizqCJAct
	 wU4365pNTRxbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7EiFtxdOc4Tc; Mon, 12 Jun 2023 15:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E1188413E;
	Mon, 12 Jun 2023 15:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E1188413E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC7101BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 15:25:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A335E611F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 15:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A335E611F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6CMfuMLLwwSc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 15:25:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D1CF611EF
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D1CF611EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 15:25:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="444452846"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="444452846"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 08:25:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="711252048"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="711252048"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 12 Jun 2023 08:25:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 12 Jun 2023 08:25:02 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 12 Jun 2023 08:25:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 12 Jun 2023 08:25:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 12 Jun 2023 08:25:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mqBhElJzhpzXe45iq9x0PsHKCniZfJhDDcwZe7cpQk5nv9126dkT7wOuRiiXeVCFTbYqUbvIZK9Til8NETpoBdRdi86hr2BhoYjxkHYYKHpTim0rSGUlaVlXNU8Sq+hp/y97tyFtWpvp5Cq5zK/Zhnh5Yv/3ZZ2SSGplThRJ3tQa3ccBIH5Fz+oJ73Vy7VT7Is+MHbH+NlM7MX13jadv9vvPsJhWQoWABaQF5KDKl5R2hdEfibGhRqmarybLYh6r/Bk6JUfPenMl2axjtMsBY6+cz8E6yfQBzbsc6OGEHdItrOok+9M0eMEvsxtPh6+AiXaNU+LwiYCsGCGoh+ndkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TsagdoZesBUnChVWvcz/oPObwBdL+vZtRN4aUOKunrw=;
 b=oH5a9tXp3oCKaXg6O9cVyarev31bIrQrsP76KqWs5hS7VGI6jUWeXxKWA07HrYLsuzLQTK40lkQBF2jPP/oL67xQPFo1URJts2YyIMi7B8T1u1aGbhKXQwRD5pceiDk+n8+9p6r7Mf4oz/Ya7cMO7gJybTzmOZ/eGD/RVKczzewe0HEl/4URxeeni03UPltshEca6j/LhEfRgV+0np3w4+otZ97PnE4MS8TjWwbTEmpITp0d1DzylTTOhsEmFXBY5rwcv3Pqr8qJaxDm2+ETVzSNckc2k7w316HAloDi8/14RW1JzuZi2TV7J4r048fg86x69YwMvoh7mnVXqT5dOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 CY8PR11MB7875.namprd11.prod.outlook.com (2603:10b6:930:6c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Mon, 12 Jun 2023 15:24:57 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6455.045; Mon, 12 Jun 2023
 15:24:57 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v8 01/10] dpll: documentation on DPLL subsystem
 interface
Thread-Index: AQHZmszoYeH83BxaW02EVqODRhjpgq+EO6aAgAMCT4A=
Date: Mon, 12 Jun 2023 15:24:57 +0000
Message-ID: <DM6PR11MB46573CE190CADE11E79993E89B54A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <ZISkvTWw5k74RO5s@nanopsycho>
In-Reply-To: <ZISkvTWw5k74RO5s@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|CY8PR11MB7875:EE_
x-ms-office365-filtering-correlation-id: 1c734a61-e89f-42d3-e084-08db6b592e28
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6iIiQPesd9ZVNaVMlhYI9rE5IoETlpcGp6T3+k2s8zqbhx9YKX+9dJ+o5sNXNVtknP98XBvF52jnb4CZY4vJlia08zUV1kfa1LueF6UsQKD3pdz4QlizEf62WThU1aCerdx+bWPBgYnf02RBxLTrcC5pqpDaElNHp8i0xYa5GEawEtHw0qBpqPRYvLjsuAabnSaMc0+jvfYJtAiOctQv8Zx7I09VZzIZg8m6pP8ZdyTalntr5+NHcgF5CQ5+RCJMWn4eygd/xtn4w+rpvSSbIVJUtNk58eWc+UxkFqXZZsTHlhEvxu1WOpjnQfrVL+Mbx+4rJE08gLFO5E9sVVCYnZvClTWAkdlw2WCotd3nX92IDjCqKUcuwfQ3CPJhNm70KzNqJXo1gKW6/teTD7BXUkgTo5Sfuw5CIzoVDxQVUr5L5mZRNYemrdpG3RDGrPbYmA9AtcPhsjctptaGIQFQpDokU/xemJN2qd8l9r0CxFzVH3k9bmBLlBa3vtlRCCPJd9qKC2+8Z7qUJtEChEAioNLZau3mKUSLSmAmjavMp2C2+icS4SIkyVrMPsVT2slwFiq+JhTxfQKhOrixtuq2QJxW9toRAosCqNPcRbR/URqro+I/6fIhjBrPWfaYF+Rd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(39860400002)(346002)(136003)(451199021)(38070700005)(4744005)(2906002)(86362001)(33656002)(7416002)(7406005)(52536014)(55016003)(7696005)(186003)(9686003)(6506007)(26005)(122000001)(82960400001)(71200400001)(54906003)(6916009)(76116006)(66946007)(66476007)(66446008)(64756008)(66556008)(4326008)(5660300002)(316002)(38100700002)(478600001)(8676002)(8936002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sZebeKyA/ZjxEwcGRSZshdxvgsIh52ym7iedAJng+M1+f3FetQs3Hk9UpG6W?=
 =?us-ascii?Q?XHiAzuJlb+rc+ZVqeJVv046xONrWlcVukLUsKisNXE2Y8VZA+uKc7gW5eq7m?=
 =?us-ascii?Q?WAj7QTbke2Hk47o4F7OAVqfBZ1BhFFuRYaBfHHBJM0to9Km9VCn0DdEkihDu?=
 =?us-ascii?Q?5fWphElt20XyVIVD65yP/xKMnha9mDTyEf3RBe3dkDCEOH5enqH1a3XmD1CC?=
 =?us-ascii?Q?nlaPog3WfGpFeMYZLtmW+HqpUzQzrPZkYStpidUem98D02F5RYOgU356vWbH?=
 =?us-ascii?Q?SBYqFf0BIjSrhOJI3eaYn8qbbusef9fersETosyQtOI8vht/v6vR6xahDd2p?=
 =?us-ascii?Q?gIIil3YejVnY7W0qfsjJFFRpTFAijRrBo1bhWQB8gzjKw/XTN8IVwqJSr5TH?=
 =?us-ascii?Q?OV0spdKM5HQTvKGfvMNcc+7qisYhgL8NQjBKRJbdEJ84+HzxQ5srDWZiVtwh?=
 =?us-ascii?Q?rGuJb2elFniwnsfiBKDgExw9/dA2LHAB+gE5sH776F3uV/24W4sYqErWy3iR?=
 =?us-ascii?Q?/xtqi55QKu53UasxZ8jcTZpE2ieyWTyrk1HqkVXvf91hbc+7MK6aGgX1nfz4?=
 =?us-ascii?Q?WHIbtwdVkJx/POV68KdorTX8dM6jz3szobMuMp9vYhpfR9ohvFT1c1/3p+EL?=
 =?us-ascii?Q?tYiPGP4P0/39Om/p9SlXaGxxrX+EZhif5PoWbMoYKn6casMyr24KojxFoELR?=
 =?us-ascii?Q?mfQdNz0HJFf2+zEOitRqpTeIYFumlrb/WN3FCBULA4uyuhcfslFLBWQuoTpr?=
 =?us-ascii?Q?XfXNkOH/vBVZD9Oc35+sNjAec6ndPRxKxWCwIk5gTq3gO9dcQAPn8K4avxXJ?=
 =?us-ascii?Q?cOi/6wTlvC2Thf14AWpyyJdsTf9X4rqnGx8H2FSGUOS1Koifj2EBfCJOUKH6?=
 =?us-ascii?Q?y3JWp9TMkLZ4HzH1gxrbEh3QFZosrlJVDOHxtKUgfBWfyNzPlBJkDhTxY3Kg?=
 =?us-ascii?Q?adUu7JlwG+GVB9zXShS8vkgTtOkjs3+hHIwkFLGZR4ArobcT+2ncga5Nfl2M?=
 =?us-ascii?Q?mE4beMWf9mDQvWq079hGpU/Kalo8NX57KZWH3IwyGsxVCJuoZPMbhomvwSQi?=
 =?us-ascii?Q?6kHkHJtuYFQQKwbq+UnvDzapHpEalsAAeKwINZ3zAiuqNtVLI5UBQpWxs6Dq?=
 =?us-ascii?Q?gTN/nW0Nd5thiUqehnc2efQLAYOU9z4hHNzIza3I+crpIUZzn+Akw0l1v5BG?=
 =?us-ascii?Q?83jrEeSD8BEbxULDVW2G6TRePpuWVyIn/xNMPHYiNQBSDsjDCBdcjk86O+gD?=
 =?us-ascii?Q?psuAFob6Amn3Qb+wnwWdjoSKQD4xpPwcIS0nYJ+yC6mbbZe6Wri/VsNsR7rH?=
 =?us-ascii?Q?CT8xw9YfHNoqk0Iu9XJqGDGps+S3qsBlon0BiH9G5JREn/tcK/lWy3EV3oEJ?=
 =?us-ascii?Q?T4qBJG60XBCHePpM136VeQWICEaUXCatc83lX65QU8uDsGZ5Sa6MNzE14prb?=
 =?us-ascii?Q?MhguFTdi2atL7hhdNsW81f3YP0ENzjkZJsAdllaqo7Sd3eainCPWGLq4k6Sr?=
 =?us-ascii?Q?nADpJMXLywh4Iuk1RdszOTm4yfs18+I35VltIyqQqKaExsk0kiIv9Oor1ugg?=
 =?us-ascii?Q?aJ6cjtAK3rBuFcIwjZ9178t1/vh6uEt4/qZ01QXPBc1lEAlWupluap3dLq+X?=
 =?us-ascii?Q?Uw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c734a61-e89f-42d3-e084-08db6b592e28
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2023 15:24:57.3362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DaA/Zo/NR/dfXPV/CCSd4rZFwDDVgchhXH2klvLuSsyc6YCkjBigEvqZvw64Q05BDp2ws5Lx2CMsxTpTHE7QW5rc5ztJUiVLI6C5cjrzC6E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7875
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686583541; x=1718119541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hWXbLbIIQ4KQ/Sl01egkPbXBKDmWDYSpmE3Ri2BjJ8w=;
 b=LPWAqroD58Mm2cuhn48Wwqro3r1XOhCjz+IbhtPnpJ7XIy5LqKr1xhks
 xFfK3JHBXlIci5Hk/QEkl7HFyHtOWqNv239D6fOJ5OJaCqNtutKcDUcOn
 MYLBokOsgyPLgpd7kUmfeb2ytp1M9iOL0TAj6Hy1BDUwKbKk+ppeqPe5X
 U8FAIbXhrjEa3IiAvHpEHUqkOze2U8jWbqXutaxlMBTAOLU3zJCdqtlla
 CqGL0pnaH3MlqBX5ebzjKTLrNuw8z4VNwqVbjL0gwLaILUPrL8cr+ur3N
 rOFUtsRoexji+zorR6S9+WPf1RO0la4jBRjjQzXolaxgClJjNaIa98Ug6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LPWAqroD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Saturday, June 10, 2023 6:29 PM
>
>Fri, Jun 09, 2023 at 02:18:44PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>
>>Add documentation explaining common netlink interface to configure DPLL
>>devices and monitoring events. Common way to implement DPLL device in
>>a driver is also covered.
>>
>>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>> Documentation/driver-api/dpll.rst  | 458 +++++++++++++++++++++++++++++
>> Documentation/driver-api/index.rst |   1 +
>> 2 files changed, 459 insertions(+)
>> create mode 100644 Documentation/driver-api/dpll.rst
>
>Looks fine to me. I just wonder if the info redundancy of this file and
>the netlink yaml could be somehow reduce. IDK.

Good question, will try to incorporate the dpll uapi header docs here,
instead of having redundant descriptions.

Thank you!
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
