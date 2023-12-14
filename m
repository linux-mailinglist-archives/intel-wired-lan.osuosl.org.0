Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A236A8131B9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 14:37:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D61F3437C2;
	Thu, 14 Dec 2023 13:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D61F3437C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702561055;
	bh=ZcZ9B45lVc2ioq0R6F/sxDcBUcu5BC6Fep5EZYqPLwo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aAY3+IuVmN61I2QZv7vgtN+0qPSPv/Prx/6cSMA8QBUkVTlRR+jwt4YyehkGuvHoX
	 /c2XLbIVQpB9kDb0vCTPI5WyPJoHkVez4vFKp2tRU2rZ17M6mZVs+hXkluCGOcVjZ1
	 irxLWZE0yyeNgy7hk5Bw6pG6lcIq0ZFdqPkgIyz4cuV+W0nDY1BnnDsJx9PerfID4d
	 hUqvekkO0af5pgmyRcpnGHYKb+idRtmtIplnSRlNgoSV53Ts/mayyJGiLQ7zE6CJmx
	 DexqwprA3KUnXb8hpmf3izlSO5zRHMFcfHsfhWMhuH4f/l+x3Zn9Sl8MSS42SR+A7e
	 2jKdYOMG5Fl4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmCXu5HWB5mo; Thu, 14 Dec 2023 13:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F38B43790;
	Thu, 14 Dec 2023 13:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F38B43790
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80A101BF28E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64E7561AFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64E7561AFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0bVkJoZ_QwRq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 13:37:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4672C61AF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:37:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4672C61AF1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="397902875"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="397902875"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 05:37:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="808582460"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="808582460"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 05:37:20 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 05:37:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 05:37:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 05:37:18 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 05:37:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mbaGryA8TuDFSPBlnvxSx6ff6q4UJFZq0ffjt+Ndk08o38C8b0jodf/1p/vlvYqYioU3dnf9H1IEww5BrrxqZ28ZVvMASlesl46Wf/WKnrrbNmJBe0s2i8+X3+4gN2ExRI+jLA49bBy5ICWPC+nWmAqRga+zRbyfI6GdCfH4dnZDs1yzFU6BqpkOVM8rzcXqmt6ZyzR2HNESmLPUugfxgVR84wcSmdDRkrv9zcFyoARvjcmA+nOFtl+2qO5WRjssSnAXaZ+zatdUuCBZmnN2kSHzCj8T/+USmA44FqInIDPEPa5qNtnpegQvApg9stLMPj7roIwXcCvy8dbqJVn/fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lkeKV2Fjcs4OgboeNXS6B7snP9fpklVfw+ZX6bGb21E=;
 b=ZyVQh37tVoaT5XG7FLdAXHX421PmmMPjxtjUS9P6ttGiRn3k5RwnMBIkevomAQlVOaBN45kGLbm4rupkDoorA9NXxdvA/SMUdlO8713aQUNQ5vymcoaszgP7HWm/EWfnOoSqG+rgTHuflgRZmWSmiowwT+L8U446dMdh9/VKo1th4tqCfRBIec0MMB7OSrFWpMbKBQo0EOwR/Ll5reNAtUbfEBfPEFZlNj7oxvlf7aQthwRmJRFjJ0oht740tOhnrrcsvW/fTFsHQiGJZOF3wS4PNSlJG5OcsF6PlZJ88/OpcwgSmzfqWDZyYhhasjPPltjY+knngzrQgUck6OKjLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 CH3PR11MB7771.namprd11.prod.outlook.com (2603:10b6:610:125::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.28; Thu, 14 Dec 2023 13:37:12 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d315:1202:838:9b76]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d315:1202:838:9b76%4]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 13:37:12 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v4 1/2] ixgbe: Refactor overtemp event handling
Thread-Index: AQHaLOm/BDkMQpsN9EW6b12VdWk/ZrCojZ+AgAA9Q0A=
Date: Thu, 14 Dec 2023 13:37:12 +0000
Message-ID: <DM6PR11MB2731112F4E12DF69363521ECF08CA@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20231212104642.316887-1-jedrzej.jagielski@intel.com>
 <20231212104642.316887-2-jedrzej.jagielski@intel.com>
 <20231214095553.GJ5817@kernel.org>
In-Reply-To: <20231214095553.GJ5817@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|CH3PR11MB7771:EE_
x-ms-office365-filtering-correlation-id: ced227a4-fb89-4a19-a8a0-08dbfca9c760
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aY43fY+gGVyDbF+tPDNDRbM+ui6evjW2oVdKm00EHKX8WdwrwTkx8Z/PBhCsh8JTBu/nwb3ljNVVKOrpb1ogm2UE/xfn05YLHppqTnlaJJ6NfYhwnsEq8+B6xf0wgJ1emHG1tOvp0GREKBk+mrYp3x6RkvqcbP7CU7TsoAXdnTBubuhSNdOfHwfhTpmM2a+uKTnp1E0F7ntiPkL1APk6jkrNosTbyjZPKEmnWt/2yqv9kjuSKdPAlj+/h2eEqyyRcYKQlMLt9d7hI2NNi45PUcg44/KhACbvw66B/jqXtlH3W8XxpetpEU8LT2FsVoc7ksfkiaXzs8ck2hG2z/bwN+rDC11nQa4IneEOJ5InD2qXPeyevt28IbsltKw2HRd//AnbUib5CZO05sU2aKn/WIbe8wWcIlap1LDaflpLIG2ExmR7JvzNy6xNEsK2EyLPLq663kX5MRaPc5YejiVXVUXc/uO81+5p82T2StnlUmwjNG/0fuXx26MzOvKk8G/3zroSv9EWRgmytveN/Jpd+y6QENWRN9U6ED3AR3Pf+B3wDDVx19VKmRlaEtB9MPqaQ3E3pchQSxz9V3eQ8EHBtA58JeIGDi62IYJIUpR7DEtMW7tgMuZASzC+eXfBVnSTdUYPUBGABK3t3RwNu/AjwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(366004)(376002)(396003)(230922051799003)(230173577357003)(230273577357003)(1800799012)(64100799003)(186009)(451199024)(6506007)(7696005)(8936002)(8676002)(4326008)(86362001)(52536014)(30864003)(83380400001)(41300700001)(33656002)(26005)(38070700009)(82960400001)(2906002)(5660300002)(9686003)(76116006)(55016003)(122000001)(54906003)(64756008)(66476007)(66946007)(66446008)(66556008)(316002)(6916009)(71200400001)(966005)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tUVrj2OlNc6r9W66ePlY3SlXb/ZLvMkaTemCp3BstQFt8lqlsbmG/URiz0tV?=
 =?us-ascii?Q?ldUZGQAI/KNAHLq21r5OrszlU7Ttwf5rCUB5Lte646xMDdYOtkVqspcrLsxo?=
 =?us-ascii?Q?0MKXyRZY6GM4Q7Z6MnJ+tyDwTAJIvthDFoVtcCGW5IL2lbsnyzaHognCXM8s?=
 =?us-ascii?Q?fJBWtMvoko6kkbyZvTglhZQ6G/DPSREsatMl+IUxUihW2/ngbtd2BGfW4As7?=
 =?us-ascii?Q?YW+eYJbvHDP33n8xuavOB+79grx3k3gDiJnqG3QDHd9MynaLTaUFonso1He2?=
 =?us-ascii?Q?4ptD8vFbJ7IH70kJOxrRKQ30AUdhalt03z6Oeb0MC3hN7VkqCJQ50urZyb2U?=
 =?us-ascii?Q?Qwh8NJK1xpFM6UfQjHpjgZQcJ/yFvkHBD5gsChTeNXgCs6z8Bj/en0tD72BE?=
 =?us-ascii?Q?zXDX1J77OI1p4yuS3XBuJXUBVApSazizs/KCGBVr67Qj7dslBFi/gaqTC+vn?=
 =?us-ascii?Q?dfM/uvPkIAMhameJ3AiBkXdmKkCNMbxHr7pqGz48D2JnvcLTAzmtSmwa3M0r?=
 =?us-ascii?Q?cbMgme8sQYr5I64cUWNVvRuxq76OoEnsWzKKaBNTKtYp7rFF02RgdriYljWo?=
 =?us-ascii?Q?4Tj3FIkXPEzik4YRp7EiOX51QaaealbGjVju9AhalEjArUA2Q3DwcmcNKNJB?=
 =?us-ascii?Q?nGtAp2YoMc4pGJk8V2uDXgxAnVtc7YcEKlQUj9s3g8EWStg9yQud2SUkKmJN?=
 =?us-ascii?Q?xl9W3mkPjQqdCeQc1GiZc5OCFb/hfC85/gpuTspDTPZd9+2DJMUjWps/YpWH?=
 =?us-ascii?Q?d//7s9Dc0wlVaeDT301fUdUg6SygQHdiVMwuFoJOmnXDRaQwMG3c8YfVc0WX?=
 =?us-ascii?Q?zQGymmaJcppUxkyOqpZiv0YNc/VctU7y5+ozhGoaiMprRbDrHa31FBUHF2yD?=
 =?us-ascii?Q?+v2ONMfCEdFQk1e7XGXCIHQpuEOFSo1VEXiBk4xwpBIaTi+gGLw7WX5ulQ4q?=
 =?us-ascii?Q?4ZVsZMik3Ol+/M3YKAHusA2RfFdmtrNkft2aai9Pg23dtAJEOzfvL87j9X4E?=
 =?us-ascii?Q?z/+4eAdAZaOpfkUKmnFtP3pHZcZK8vr5VsDNIx1q5ZHlFO36HukZxPfb9z1m?=
 =?us-ascii?Q?yc9ZW1F9nhjyl57+4YXp+A/HbW/XBcigDgCihkTEqSdxleDhlwlSAkbOD8b7?=
 =?us-ascii?Q?XbzqJ1NSw1DPYD6rEUCFjlpSW9N2HOhCVuq57L/Labg72DaPZ4dQGGppyRG8?=
 =?us-ascii?Q?iZZug2WSF0YE6IpiEH4RCgQ9FQyBuroczzLe1RB/Pba+aUpS+9KdOaaJRHQ5?=
 =?us-ascii?Q?AwUq0VJwE/CyX5Vw2mENKwiJL5JF+M0VLWVRAcjAttt5CNE7LHhH9N/VR38F?=
 =?us-ascii?Q?x8/if0npe2bBT9gatVLNVHiOSZJjAyrRfot2jDw8AJOSNXR5IkZ1A/JtyROj?=
 =?us-ascii?Q?q6259Ze1QotdsqnfZeBEJF66bJDJ8RdyEmlrW+0FBsumOSlrVFiNZK+6lCQw?=
 =?us-ascii?Q?Nj6SCZdZuvRg6apxNWZYFLBxcTia6VWqEHN9+fogS060HFCNwTdXTtY7MM3z?=
 =?us-ascii?Q?UeRN0ljcuWyC2YKQf6VgxKl/GSb5OWmlaJc8QCt6kKzGGZZ0m25I7/7eSorI?=
 =?us-ascii?Q?/irZcEijIsniI0gwJf5FcbQ0q0f5UlY08014+Os4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ced227a4-fb89-4a19-a8a0-08dbfca9c760
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 13:37:12.7520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aMlOouDbKGNPqdNNVV3vIWIUXlaoh1omfCMXAyNSgoYlkCUeglHp2eX5DuVteQdThNHwS1lNUq8r1oigGHMn5tI4KJiu2eAdxGAU58vvKJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702561046; x=1734097046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XGCdSufJ040n5vHC4RmcFFLMh2VSNoiUvdL7tdb+guU=;
 b=QZDQTqXspqIA0N46ScEIvXeuRCTHIWsRYLhduZ7Y/HcgiB2hxBnU+iLH
 aGV5S035SNeI4lso8TnRBXsmdPgvSOj9BqLWm09NHsdqd2MVcv95a/YZr
 mYG7E7YKSM7q4gcMlpaBvP6jSkbE8xPL66Ukh2m46C2KPDu217VT4EqgE
 qtSfAo/UZJc9WOSKA3RQUKvLpjR/0d425Kpa0WIOc6I+h+UpWjPV7VLa/
 7AeQNVD+fmPgL6PHgpXDp3/BJgkAB3aYuiCoY+T+Oy40ssi6bPeyQQMbg
 Ub8hvLmlpHz2u/QmKXfaTJLIhmgn4BrOMqfm/d0rS6TgwVKdii+6AYknO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QZDQTqXs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Simon Horman <horms@kernel.org> 
Sent: Thursday, December 14, 2023 10:56 AM

>On Tue, Dec 12, 2023 at 11:46:41AM +0100, Jedrzej Jagielski wrote:
>> Currently ixgbe driver is notified of overheating events
>> via internal IXGBE_ERR_OVERTEMP error code.
>> 
>> Change the approach for handle_lasi() to use freshly introduced
>> is_overtemp function parameter which set when such event occurs.
>> Change check_overtemp() to bool and return true if overtemp
>> event occurs.
>> 
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>> v2: change aproach to use additional function parameter to notify when overheat
>> v4: change check_overtemp to bool
>> 
>> https://lore.kernel.org/netdev/20231208090055.303507-1-jedrzej.jagielski@intel.com/T/
>> ---
>
>Hi Jedrzej,
>
>I like where this patch-set is going.
>Please find some feedback from my side inline.

Hi Simon
thank you for the review.

>
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 19 ++++----
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 26 ++++++-----
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 +-
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  4 +-
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 45 +++++++++++--------
>>  5 files changed, 54 insertions(+), 42 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 227415d61efc..9bff614788a2 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -2756,7 +2756,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>  {
>>  	struct ixgbe_hw *hw = &adapter->hw;
>>  	u32 eicr = adapter->interrupt_event;
>> -	s32 rc;
>> +	bool overtemp;
>>  
>>  	if (test_bit(__IXGBE_DOWN, &adapter->state))
>>  		return;
>> @@ -2790,14 +2790,15 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>  		}
>>  
>>  		/* Check if this is not due to overtemp */
>> -		if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
>> +		overtemp = hw->phy.ops.check_overtemp(hw);
>> +		if (!overtemp)
>>  			return;
>
>I like the readability of the above, but FWIIW, I think it could
>also be slightly more compactly written as (completely untested!):
>
>		if (!hw->phy.ops.check_overtemp(hw))
>			return;

I decided to do that this way in order to improve readability,
but sure it can be changed.

>
>>  
>>  		break;
>>  	case IXGBE_DEV_ID_X550EM_A_1G_T:
>>  	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
>> -		rc = hw->phy.ops.check_overtemp(hw);
>> -		if (rc != IXGBE_ERR_OVERTEMP)
>> +		overtemp = hw->phy.ops.check_overtemp(hw);
>> +		if (!overtemp)
>>  			return;
>>  		break;
>>  	default:
>> @@ -7938,7 +7939,7 @@ static void ixgbe_service_timer(struct timer_list *t)
>>  static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
>>  {
>>  	struct ixgbe_hw *hw = &adapter->hw;
>> -	u32 status;
>> +	bool overtemp;
>>  
>>  	if (!(adapter->flags2 & IXGBE_FLAG2_PHY_INTERRUPT))
>>  		return;
>> @@ -7948,11 +7949,9 @@ static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
>>  	if (!hw->phy.ops.handle_lasi)
>>  		return;
>>  
>> -	status = hw->phy.ops.handle_lasi(&adapter->hw);
>> -	if (status != IXGBE_ERR_OVERTEMP)
>> -		return;
>> -
>> -	e_crit(drv, "%s\n", ixgbe_overheat_msg);
>> +	hw->phy.ops.handle_lasi(&adapter->hw, &overtemp);
>
>Unless I am mistaken, the above can return an error. Should it be checked?

Since we are inside a void function we don't have many options to handle that.

I could be:
	err = hw->phy.ops.handle_lasi(&adapter->hw, &overtemp);
	if (err)
		return;
		
	if (!overtemp)
		return;
		
So i decided to shorten it just to 

	if (overtemp)
		...
		
Some solution instead of returning here is to log warning when error
encountered.		

>
>Or alternatively, as this seems to be the only call-site,
>could handle_lasi() return overtemp as a bool?

Actually handle_lasi() was designed to handle not only overtemp events
but also link status ones. When changing it to bool it would be
hard to differentiate them - then true only for overtemp case and false
when link change or any error? I am not sure if this is a good direction.

>
>> +	if (overtemp)
>> +		e_crit(drv, "%s\n", ixgbe_overheat_msg);
>>  }
>>  
>>  static void ixgbe_reset_subtask(struct ixgbe_adapter *adapter)
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
>> index ca31638c6fb8..343c3ca9b1c9 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
>> @@ -396,9 +396,10 @@ static enum ixgbe_phy_type ixgbe_get_phy_type_from_id(u32 phy_id)
>>   **/
>>  s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
>>  {
>> -	u32 i;
>> -	u16 ctrl = 0;
>>  	s32 status = 0;
>> +	bool overtemp;
>> +	u16 ctrl = 0;
>> +	u32 i;
>>  
>>  	if (hw->phy.type == ixgbe_phy_unknown)
>>  		status = ixgbe_identify_phy_generic(hw);
>> @@ -407,8 +408,8 @@ s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
>>  		return status;
>>  
>>  	/* Don't reset PHY if it's shut down due to overtemp. */
>> -	if (!hw->phy.reset_if_overtemp &&
>> -	    (IXGBE_ERR_OVERTEMP == hw->phy.ops.check_overtemp(hw)))
>> +	overtemp = hw->phy.ops.check_overtemp(hw);
>> +	if (!hw->phy.reset_if_overtemp && overtemp)
>>  		return 0;
>
>Previously check_overtemp() would only be called if reset_if_overtemp was
>false. Now it is called unconditionally. I'm not sure if it matters, but
>the check for reset_if_overtemp may have avoided some logic, including a
>call to hw->phy.ops.read_reg() in some cases.

Sure, the previous approach seems to be more efficient. Will be restored.

>
>I wonder if it would be nicer to go back to the previous logic.
>(completely untested!)
>
>	if (!hw->phy.reset_if_overtemp && hw->phy.ops.check_overtemp(hw))
>		return 0;
>
>>  
>>  	/* Blocked by MNG FW so bail */
>> @@ -2747,21 +2748,24 @@ static void ixgbe_i2c_bus_clear(struct ixgbe_hw *hw)
>>   *
>>   *  Checks if the LASI temp alarm status was triggered due to overtemp
>>   **/
>> -s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
>> +bool ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
>>  {
>>  	u16 phy_data = 0;
>> +	u32 status;
>>  
>>  	if (hw->device_id != IXGBE_DEV_ID_82599_T3_LOM)
>> -		return 0;
>> +		return false;
>>  
>>  	/* Check that the LASI temp alarm status was triggered */
>> -	hw->phy.ops.read_reg(hw, IXGBE_TN_LASI_STATUS_REG,
>> -			     MDIO_MMD_PMAPMD, &phy_data);
>> +	status = hw->phy.ops.read_reg(hw, IXGBE_TN_LASI_STATUS_REG,
>> +				      MDIO_MMD_PMAPMD, &phy_data);
>> +	if (status)
>> +		return false;
>>  
>> -	if (!(phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM))
>> -		return 0;
>> +	if (phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM)
>> +		return true;
>>  
>> -	return IXGBE_ERR_OVERTEMP;
>> +	return false;
>
>Maybe (completely untested!):

I like it.

>
>	return !!(phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM)
>
>>  }
>>  
>>  /** ixgbe_set_copper_phy_power - Control power for copper phy
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
>> index 6544c4539c0d..ef72729d7c93 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
>> @@ -155,7 +155,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw);
>>  s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
>>  					u16 *list_offset,
>>  					u16 *data_offset);
>> -s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
>> +bool ixgbe_tn_check_overtemp(struct ixgbe_hw *hw);
>>  s32 ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
>>  				u8 dev_addr, u8 *data);
>>  s32 ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>> index 2b00db92b08f..91c9ecca4cb5 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>> @@ -3509,10 +3509,10 @@ struct ixgbe_phy_operations {
>>  	s32 (*read_i2c_sff8472)(struct ixgbe_hw *, u8 , u8 *);
>>  	s32 (*read_i2c_eeprom)(struct ixgbe_hw *, u8 , u8 *);
>>  	s32 (*write_i2c_eeprom)(struct ixgbe_hw *, u8, u8);
>> -	s32 (*check_overtemp)(struct ixgbe_hw *);
>> +	bool (*check_overtemp)(struct ixgbe_hw *);
>>  	s32 (*set_phy_power)(struct ixgbe_hw *, bool on);
>>  	s32 (*enter_lplu)(struct ixgbe_hw *);
>> -	s32 (*handle_lasi)(struct ixgbe_hw *hw);
>> +	s32 (*handle_lasi)(struct ixgbe_hw *hw, bool *);
>
>I'm not sure of the history of this, or the nature of the other callbacks,
>but I think that usually int is used as the return type when standard error
>numbers are returned. I realise that is not strictly related to this patch,
>maybe it could be addressed at some point?

Sure, so it will be scheduled for the future.

>
>>  	s32 (*read_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
>>  				      u8 *value);
>>  	s32 (*write_i2c_byte_unlocked)(struct ixgbe_hw *, u8 offset, u8 addr,
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
>> index b3509b617a4e..59dd38dd8248 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
>> @@ -600,8 +600,10 @@ static s32 ixgbe_setup_fw_link(struct ixgbe_hw *hw)
>>  	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_SETUP_LINK, &setup);
>>  	if (rc)
>>  		return rc;
>> +
>>  	if (setup[0] == FW_PHY_ACT_SETUP_LINK_RSP_DOWN)
>> -		return IXGBE_ERR_OVERTEMP;
>> +		return -EIO;
>> +
>>  	return 0;
>>  }
>>  
>> @@ -2367,18 +2369,21 @@ static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
>>   * @hw: pointer to hardware structure
>>   * @lsc: pointer to boolean flag which indicates whether external Base T
>>   *	 PHY interrupt is lsc
>> + * @is_overtemp: indicate whether an overtemp event encountered
>>   *
>>   * Determime if external Base T PHY interrupt cause is high temperature
>>   * failure alarm or link status change.
>> - *
>> - * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
>> - * failure alarm, else return PHY access status.
>>   **/
>> -static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>> +static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc,
>> +				       bool *is_overtemp)
>>  {
>>  	u32 status;
>>  	u16 reg;
>>  
>> +	if (!hw || !lsc || !is_overtemp)
>> +		return -EINVAL;
>
>I don't think this kind of defensive programming is appropriate
>in a kernel driver.

Ok, i wasn't sure. Just wanted to ensure we won't use is_overtemp if NULL.

>
>And unless I am mistaken, caller's don't check the return value of this
>function (or propagate to a caller which doesn't check it).

ixgbe_handle_lasi_ext_t_x550em() which is calling this function checks its
returned status.

>
>> +
>> +	*is_overtemp = false;
>>  	*lsc = false;
>>  
>>  	/* Vendor alarm triggered */
>> @@ -2410,7 +2415,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>>  	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL) {
>>  		/* power down the PHY in case the PHY FW didn't already */
>>  		ixgbe_set_copper_phy_power(hw, false);
>> -		return IXGBE_ERR_OVERTEMP;
>> +		*is_overtemp = true;
>> +		return -EIO;
>>  	}
>>  	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT) {
>>  		/*  device fault alarm triggered */
>> @@ -2424,7 +2430,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>>  		if (reg == IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP) {
>>  			/* power down the PHY in case the PHY FW didn't */
>>  			ixgbe_set_copper_phy_power(hw, false);
>> -			return IXGBE_ERR_OVERTEMP;
>> +			*is_overtemp = true;
>> +			return -EIO;
>>  		}
>>  	}
>>  
>> @@ -2460,12 +2467,12 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>>   **/
>>  static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
>>  {
>> +	bool lsc, overtemp;
>>  	u32 status;
>>  	u16 reg;
>> -	bool lsc;
>>  
>>  	/* Clear interrupt flags */
>> -	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);
>> +	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc, &overtemp);
>>  
>>  	/* Enable link status change alarm */
>>  
>> @@ -2544,21 +2551,23 @@ static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
>>  /**
>>   * ixgbe_handle_lasi_ext_t_x550em - Handle external Base T PHY interrupt
>>   * @hw: pointer to hardware structure
>> + * @is_overtemp: indicate whether an overtemp event encountered
>>   *
>>   * Handle external Base T PHY interrupt. If high temperature
>>   * failure alarm then return error, else if link status change
>>   * then setup internal/external PHY link
>> - *
>> - * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
>> - * failure alarm, else return PHY access status.
>>   **/
>> -static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
>> +static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw,
>> +					  bool *is_overtemp)
>>  {
>>  	struct ixgbe_phy_info *phy = &hw->phy;
>>  	bool lsc;
>>  	u32 status;
>>  
>> -	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);
>> +	if (!hw || !is_overtemp)
>> +		return -EINVAL;
>
>Ditto.
>
>> +
>> +	status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc, is_overtemp);
>>  	if (status)
>>  		return status;
>>  
>> @@ -3186,20 +3195,20 @@ static s32 ixgbe_reset_phy_fw(struct ixgbe_hw *hw)
>>   * ixgbe_check_overtemp_fw - Check firmware-controlled PHYs for overtemp
>>   * @hw: pointer to hardware structure
>>   */
>> -static s32 ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
>> +static bool ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
>>  {
>>  	u32 store[FW_PHY_ACT_DATA_COUNT] = { 0 };
>>  	s32 rc;
>>  
>>  	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_GET_LINK_INFO, &store);
>>  	if (rc)
>> -		return rc;
>> +		return false;
>>  
>>  	if (store[0] & FW_PHY_ACT_GET_LINK_INFO_TEMP) {
>>  		ixgbe_shutdown_fw_phy(hw);
>> -		return IXGBE_ERR_OVERTEMP;
>> +		return true;
>>  	}
>> -	return 0;
>> +	return false;
>>  }
>>  
>>  /**
>> -- 
>> 2.31.1
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
