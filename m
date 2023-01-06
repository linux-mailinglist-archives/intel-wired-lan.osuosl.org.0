Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D07565FB70
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 07:31:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7035060B9E;
	Fri,  6 Jan 2023 06:31:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7035060B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672986717;
	bh=RV3LEOFdZUWY0U8mvUzgWRK9WUpggt0atR6L+Q9pq18=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YUH7gX5wGguh7Nfg5cREslV3Ld5Gv7Skia7JOpkGQEhV3kjVY6SUhGftGD5huvcjD
	 05j8qkag9ybiN09d0eW0QJLnEsPSNRTlzUg+1UiQnfwGS/z0TOgCueVhWz0zRcE0ks
	 3RuV/IHAGN17l90rfyad48QTGw/fFMnFBUi2vrcvU7IzVFO42h34FXU4t51VVwGnK1
	 IKYLz26PQ8w8z/hX/LE8QUdLG8QABJ+jyxvWDxvRDP8as35+a2PHVmbv6pII9yO2y9
	 MlDEwJMQbyRAJcOXXKlRfRY5GJ+NadenI0CpULoNkhdMwpsEkec4SW/o5F96Ycetht
	 Ot4Qfg/60uFwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TW6yhkckfJBV; Fri,  6 Jan 2023 06:31:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6071E60B99;
	Fri,  6 Jan 2023 06:31:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6071E60B99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E60751BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBB6060B99
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:31:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBB6060B99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Od6TkSWUMJ9K for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 06:31:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56E5E60B97
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56E5E60B97
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:31:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="321125081"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="321125081"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 22:31:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="649241997"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="649241997"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 05 Jan 2023 22:31:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:31:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 22:31:46 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 22:31:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HvBp+0p8nJOg87Z4X9q4NeAN4gIl7G/xtzaw4260ctDk7nmnSIUu0P6I9FWw2YfDL9ArBUgHuOAl1ZESYZfXU+RYQnc6gkUnZDOf8TCeNB73oXk6jmJoJct7G5rb1dbRTq34xR68eJqzxvZ0qx4Nc4fezfIP3yGnNqFJjoZdsCUqcZWKeKPdxotGZUzHkFODcz6qyN46mvjKR4BjyuA8cXmNz4tN2DUBodZaVigxRv9Vq3XBRoIcPiiuphG+D2tGWuFPd4ozcbPMumVrTrlproIfNpWcgjDkc32lOUjVBc3TnXKVl8GwKBT4y9W7YN+XdhTAZSOvMPVm58Del4MGtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHnmsd03SMoHjj3PKjf1WfZ+mzdMQkMPWZVgvEYd4Xw=;
 b=ZVU9tPNU/X3vJbg6GuWh2xYvtjzUAu2jFW38yoDB2+9iFAAmDNPIfDoRvQFtEe/sxlF7tR7+HYGH8EfvR+QH7Pb8IAmoBbr3Uet+hk7dbamASbyfyt2hA8YC7VVtryC3QDpEkeNK3JBjd8UqdmBSins2GoIp+vPpn3iv+gMRUyYBfV8zJkOElG+a1Pr92IvtpOZUsa04tobUyyOvsP/SJhwQ8MZ9kFa7PxEytuKXmw5cTS2SNk9xsMA4qlO23JHEta6KFQtb7FJtY1DVU3qVuDMYf123Td32DgrBv1RicxeiQIYlrDzu9ImRvtwrnaUhnGvzi/qDcLJ3Q7dAYQtzjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW5PR11MB5906.namprd11.prod.outlook.com (2603:10b6:303:1a0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 06:31:44 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 06:31:43 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 03/10] ice: cleanup in VSI
 config/deconfig code
Thread-Index: AQHZFTL/hH9C1rQqS0aYaTZZdvE0yq6RBoIw
Date: Fri, 6 Jan 2023 06:31:43 +0000
Message-ID: <BYAPR11MB3367075D1D52A625385C8D0BFCFB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
 <20221221113822.12858-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221221113822.12858-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW5PR11MB5906:EE_
x-ms-office365-filtering-correlation-id: aa60c2d9-cc1f-4e30-e1dc-08daefafad53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ke3K9hS9KX808uuUdFgH8gOdzDf18Ypl1yYV2bVoE+X5yqc/9PCK2/llw1k42IjTqlrElMMQPW8H9e5c8jlqi0zxO3cvkbeCtu5DtiT0uiNNhwJbYRBVVoFVwd0hoDh98hRzCGSf/5Ec3wQOeqTuI85jawlWWaR1W121NYSJ8ihL+uTld/14Q2d1YpBVC8tTOM/MzALmizEZmEL1axX2yPCVhdfWSzvk/AkL45/pWZrwBHKAiihjQ6KlLLdWruRC2y8s7Hodu6pqa9z278y2s+ppOI9xkoJq6pW48UlMAJgJpnsCRwIV3Iia0DYBBZA6uZ+2wmXkD9hWfIgPSeEJ5mY7ArM3y3acJXdKQnM1VRxkfuinNJgpqFwWbMLCs2DXSKUAXBXImpHTTtMxI0tnaU5irop+uXRp+ImHAE0gv4FrT2gXC78UlAHGogZPoKhyt9rgySVBmArM9UVDhFL14ThniV5Tv/0n0OoiNdi5j5/KovMKdMLTK1mqWoToA0g6jOP1R1hRi6xWFxekVDhB4Mtw6d0TQhAKcjJIrsTnKpCn/36Fm0ruIb1qKRIdERwFZRbaoyK+DU2DIklqMA5xNApsVOxWF2xkB1nZFy1Ge7l74zo5B/eJnWLAlpiPY4OVV0nozVJm2VMDUQYOcTqcsjpzVFdCeN0q25t0+i+fPUQjxdJouTCrDXpBItvskJAqH0smce9qCUZbyo5jOLrR0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(39860400002)(376002)(396003)(136003)(451199015)(71200400001)(38070700005)(186003)(26005)(53546011)(55236004)(478600001)(9686003)(82960400001)(38100700002)(54906003)(110136005)(5660300002)(122000001)(66946007)(66556008)(4326008)(86362001)(8676002)(66476007)(66446008)(55016003)(2906002)(7696005)(6506007)(76116006)(33656002)(64756008)(8936002)(83380400001)(316002)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oSLs0WZXgdkqmhORTuGJPa0/p7ExqP1Pf8raIR8Oitr8/4Hmidc2JfKwj4Fw?=
 =?us-ascii?Q?yLgWYmARXqjQOAmUbIV+tf/11o+mCtuZxbN4ZanVbQe1NtDLBz0cB8XnYeXA?=
 =?us-ascii?Q?1fgGr0qhFSdWK4GNKeIK71eGFteloUaY83boiEPNvX3cxcbmM9cYHGRI/7QL?=
 =?us-ascii?Q?SnZLcNrcfGalEktKcAzV/pTr29gbAh/g949f5t8OEtZ3MpGA4THlwqeq6tPp?=
 =?us-ascii?Q?+iQjgwMhPTbn3y/4wRN48PiF7BKzyfc/rTGuIT42omwlzvC7Jus9OwrJEvhI?=
 =?us-ascii?Q?u1grG2sGOek2Vrl0qBZTYkuFLzRylTVh/9TNkPrjM/F1QjtCAOytLUTb88Wm?=
 =?us-ascii?Q?mnSa2plp5FTr9foOvm2n5EovUoS3JCvUwZPaQUCWUWFQJF1xKRFS53z8QNBb?=
 =?us-ascii?Q?8I0smS/Z2kENoLhOD6fh9zdIEUCg8rPisf4dapCYveRHtRkt1d96W3GClHr4?=
 =?us-ascii?Q?rBd4BcxZxPMSt7RFUSJYDZoi0galAfajkhlXFvQGfEcLfKMgzaKrIR8riRcZ?=
 =?us-ascii?Q?hM+BJ9XOYRG76dhYiB7goyBgsMkmoTdORx+rvuRu2AhGUYbvUk3EZd018yh2?=
 =?us-ascii?Q?3owmZphlqiq27R/p64eMB9sgUUoKNi6GQwiPGqNcoCMgd0L9vEQA2P73dfJK?=
 =?us-ascii?Q?yyqFRv/Vy5xEf6Cr4YjFyXh9sfhmeM2+citt2XkdYmEnx1nYvNKFvgU4zHTl?=
 =?us-ascii?Q?we173qStr9TSm9o81Mug+3MaP8byCGhD8Q+UsV5KB1o5Kgwwc302swQYnFOC?=
 =?us-ascii?Q?hL38x3FH0T9lvNgYVEClM2+/HF5/w9BTmi7Jyl5UI0nshfK/kxnJ5YaxiG7c?=
 =?us-ascii?Q?BzVzxtPYqOuoC/SGz1lXS7Bb0m38Ea2Yok9vZ7O/aXc5tYTFu4hQeWoPkwhv?=
 =?us-ascii?Q?/4qOAWXMvrzf6Ay2wIlQ4mvvLJquUz2iXrVj8O8jx+ajvm6Bhhn7eJSRopRP?=
 =?us-ascii?Q?wWQgMXMpPOVTnu7Nxbimsasl02igHhpXTZneecj61oR126RMUtIwUkTGnFns?=
 =?us-ascii?Q?4H7+OHK9tljSnjkfx4ACopjy8lJekhRL1KnikhLc8n74nBaI1f7ncbppMiRg?=
 =?us-ascii?Q?1tBnQ8T0mpgtRl3DrM6WdnVKqtd/+XkLyDb6PMMHLOrgVAPlweAYHR/vfL1q?=
 =?us-ascii?Q?4bBdjYvoAghaF/AeIeu3hEqi46LFkNR26YMzb7j0BtyQGmj3xd5Xbkd9INdN?=
 =?us-ascii?Q?NyDlUa01nvucRMmmd/v8KFRmaoBJwFOsdhCp2cQWuZ9h7MFQvKoBs8wPN0UR?=
 =?us-ascii?Q?Fjamr6MeHvzyDx3hs/FBSQjvaS5HpiIQ5wK6RKgunU5T0LIV1cB1Exc4zn0x?=
 =?us-ascii?Q?j0nILVV33VJFKFNqWfY3ZWpUcvbzf4b2kkXFAiPCrp7te9i5JeHQpc5DEak2?=
 =?us-ascii?Q?nWnlmi1XDR7WpEptCJvVtAH4/jL+co9jmq0ZlviMy+55SxYXEEuJFOTOn6kj?=
 =?us-ascii?Q?eECl8niCtMj6YZyBDT1L9RY/jESZD3rWJnUwllEdALAY8EkMCU25+r9EGiGD?=
 =?us-ascii?Q?ruUxHIgnz+cwK+kO4CepaZVbR4IulIlWwuWLb0icuEDqf2xxDSJg3wqv9buE?=
 =?us-ascii?Q?S/TzAxVcTQNa1Xk5qE1Q7zH0mShNNLZsT+6Vl9Op?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa60c2d9-cc1f-4e30-e1dc-08daefafad53
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 06:31:43.2304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uJfJStkRQT9/ndworK/Pw/UZW23G6zfHTgh5FsJbENmMV0G4ZbKQwdyWRHO/JwTEdlJlb66eX75yl7T0PtHBgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5906
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672986709; x=1704522709;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cq/FB1iZpCHblbMnJ5MIe8zx8Tf77cP0bfqsWIONP1s=;
 b=gDE6U/iyXuge/Mo3JuT2hSgW9Uj4fhLwOBs+8ZBiumVySkTKspDxjk/s
 iwtm8v0MNL/CEovA2eSDQJxaSjj5cJbfQSLzMMQLbjOMTA8eRHvXln88m
 PTMkfkrVC8TIKbg9R2fXCnhRR2B9U8vlxdlqYp5wVGB2OmaNp35EcehXv
 fQrTkdsdGp1x8WLvyk+yEx8yVCHzUJur1W10O1/SYEa18a0/nfcMF+Z9O
 qz34iLSdxOQtAFgbEPtqDN2TXuiRWT6aneJl0pKGBBz1JSoNMpxxMD0Dv
 MAXyIhnkauT6eHYgs/xVebg4FEvaYuqhVtDP1mY8gq1X5wXbS9wR3XLJP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gDE6U/iy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 03/10] ice: cleanup in VSI
 config/deconfig code
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Mikailenko,
 Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, December 21, 2022 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 03/10] ice: cleanup in VSI
> config/deconfig code
> 
> Do few small cleanups:
> 
> 1) Rename the function to reflect that it doesn't configure all things related
> to VSI. ice_vsi_cfg_lan() better fits to what function is doing.
> 
> ice_vsi_cfg() can be use to name function that will configure whole VSI.
> 
> 2) Remove unused ethtype field from VSI. There is no need to set ethtype
> here, because it is never used.
> 
> 3) Remove unnecessary check for ICE_VSI_CHNL. There is check for
> ICE_VSI_CHNL in ice_vsi_get_qs, so there is no need to check it before calling
> the function.
> 
> 4) Simplify ice_vsi_alloc() call. There is no need to check the type of VSI
> before calling ice_vsi_alloc(). For ICE_VSI_CHNL vf is always NULL
> (ice_vsi_setup() is called with vf=NULL).
> For ICE_VSI_VF or ICE_VSI_CTRL ch is always NULL and for other VSI types ch
> and vf are always NULL.
> 
> 5) Remove unnecessary call to ice_vsi_dis_irq(). ice_vsi_dis_irq() will be
> called in ice_vsi_close() flow (ice_vsi_close() -> ice_vsi_down() ->
> ice_vsi_dis_irq()). Remove unnecessary call.
> 
> 6) Don't remove specific filters in release. All hw filters are removed in
> ice_fltr_remove_alli(), which is always called in VSI release flow.
> There is no need to remove only ethertype filters before calling
> ice_fltr_remove_all().
> 
> 7) Rename ice_vsi_clear() to ice_vsi_free(). As ice_vsi_clear() only free
> memory allocated in ice_vsi_alloc() rename it to ice_vsi_free() which better
> shows what function is doing.
> 
> 8) Free coalesce param in rebuild. There is potential memory leak if
> configuration of VSI lan fails. Free coalesce to avoid it.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  3 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 51 +++++++-------------
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    | 12 ++---
>  5 files changed, 26 insertions(+), 44 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
