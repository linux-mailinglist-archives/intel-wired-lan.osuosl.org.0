Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D215EB7E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 04:53:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F86B818D0;
	Tue, 27 Sep 2022 02:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F86B818D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664247220;
	bh=TfDC9YWeWNt5nJLbeFXhj+GfG+TD8qDAMUd1bfpHz58=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DXuODS4urX6aaorSO3v0/i8nPwLD0d0syuAmaGfAc6/hG5TUCoDZtgF4QMtsQxYkN
	 suSSHNg4FIhuPn1Xjx30/O1X/PsK3n8eeDp0Kj0AWGzdIvJ3FGIv/+ly2gG7JiXorR
	 cBe18kcEa5LejEPD3rJYYRz6c1NYci5oTDZx/CZR3KeTZ0wiZ+OLgdjhH+lyhj6np6
	 TZ5DH+ZBM4i3zLmLLEzv+uCW5isRo69zbun9xqn7DP8UWcwH6Vs304Pviv982dFwLJ
	 ZXpRcljXr+MVkxd2I7REDoRLSACmikN5FHN29vFD6nwxrGiNHScDMriUmQmIVv6T2r
	 mbgcTFSI4gS9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DHhrX_pytrK6; Tue, 27 Sep 2022 02:53:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78D848149A;
	Tue, 27 Sep 2022 02:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78D848149A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73A5B1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 02:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A3814088C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 02:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A3814088C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qK6J_ouWlY8l for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Sep 2022 02:53:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2656B4088A
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2656B4088A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 02:53:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="387490076"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="387490076"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 19:53:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="572487807"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="572487807"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 26 Sep 2022 19:53:23 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 19:53:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 19:53:23 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 19:53:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SXolLMYMTWV4cL8Xqp0iIM/jZL4r/g6KC+gMIMwHCKMjqrItybWNNjSRyhewFr04Qlo/JprYuvjzTLtXoCNW7wfSGMDGMCCJTHFfIEYAvbijgSKHKLhFzlXhLYHKhyn1tr9sW6fTPMPEiFA625/fgICHTwzBq+HY6E5QUCZXPo2tdxjpNg/C84iNAUO2dMB3trf579VwaupRAK/ceet7Eix46jF9a++tBm+HLx9fDbMQ9KyJW2b52uC/h4YFQAv/r3xekPBSmIpShbdQSi4ytFpFo/6OPq1VGvR8ZNxabmsafmW4lDVBnVxjsNwgihwTHCLg1A8fCDWyikSt/lenoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OctJd2unAnQvJBPmfDIsXX0ta/46Vtpj4s7cs66Lc5Y=;
 b=Xum8XP40KzngF+nhC9HeJyBe7mXKl1zqrZcuC131coY+ZNsIGx4iB+q9qoRklIyfcqC/xcDic2RuKs3R30cYtjGPKxsNMZ3ycXtgmni87NsJ1k5XUcR5cHD/zXojnXjAjmLBq1RzW8CvaJpXQU545nY5JMElsDLQucKHDUIiWTk/gb0or/G6+HqhZnJ3gaRLc79q6xxnQT9VJYDIuVHy9S3sySho/lLhmw9h1BraAmeCS67Do5jSjUXSiOzUqc05dRqjHuoQm9QPMtRDe4hLCYAjkjcVnV5kmwqC77l/lEbqNtAL+fWAhHqOoA7TQ1z2EwO3TN983z2hiJoSRWVDuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Tue, 27 Sep
 2022 02:53:20 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::d1ff:f036:e0a7:9af6]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::d1ff:f036:e0a7:9af6%3]) with mapi id 15.20.5654.025; Tue, 27 Sep 2022
 02:53:20 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net 2/2] ice: xsk: drop power of
 2 ring size restriction for AF_XDP
Thread-Index: AQHYvG13i/Sk8kdml02zy8eDkxbgnq3yvtCg
Date: Tue, 27 Sep 2022 02:53:20 +0000
Message-ID: <PH0PR11MB5144F58BB06E900C94D5BD9DE2559@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20220830123803.9361-1-maciej.fijalkowski@intel.com>
 <20220830123803.9361-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20220830123803.9361-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5144:EE_|IA0PR11MB7307:EE_
x-ms-office365-filtering-correlation-id: ac4e3c36-66eb-428b-a476-08daa0336fed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JtoqhjEywza8+Wt3Spf/o4OfcaoglKCzhNCvMnlB/mEQi6WfIlsnOuLV/yHcxhgrVzLcgsmdndSWlZkzc1tviifR1ZuUlE6Q6iSEQPT8Tk/zn8eHF1NcmJFAjDTYfRvxWpJXTLuuEdwrzutNyUpfeUFYkJRjUKTalsI0ZJzor5reacP8yY3mHWPdb0+TZ2Kg65GZjxLt5sPVaqB+iVNNepX4b9fmW0KBidntpDVW3+2PDFRx7yXL+LZflAJHDlGLjgBGZnoMArva6+kLb+0UluQYxpdktD/1wCpvgFoSYhLisaPmhMcGrRtEUPRMCtlbfGYMXYhbTcwr+4Wiagc0MfuSA43KGZ7a9fgtEyFWbiDz3P0suoXHNa1jzTRW5y2QhRgYff2Lv5/1zCvMqf/GKkW+WoguVm3GAz9CynYO8pN5R0IMYswoyb+43+l94FkHEWsKPiyuNrPwTp6jLoMErOUizsAyZJexDDuyvF5MDkdj1cmJfIbP+IsChRsv9DBdlM8sWdh2e7ZAs+AE+MF0AjSA85OrRn5AY1dhaZsnnOAORGn9E2dJG73cnVm55L7MGxZ/fvRLgvL7We4GLNSAM61BvN2s1Dng37FmtNpxIsGZcZMN2ZCDOA7CEULfAiQWnjUkf2OhYW0qFeQ/kVDFeZNj1vEWsSfTaMNVYQCrw0cVNBPacGLnm6TSxfzpStplrAxSdQnVM5cG7IiPJueaKG6Q9BodpAealhoEY8BrbCp5x6X/ATXpZi3dL5B8zRSXwp7v80WZREBOd+lw3AhyGA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(396003)(346002)(39860400002)(376002)(451199015)(54906003)(66946007)(55016003)(110136005)(66446008)(64756008)(4326008)(66476007)(71200400001)(478600001)(66556008)(316002)(8676002)(86362001)(76116006)(33656002)(107886003)(82960400001)(83380400001)(41300700001)(55236004)(26005)(9686003)(5660300002)(8936002)(122000001)(52536014)(53546011)(4744005)(6506007)(7696005)(2906002)(38100700002)(38070700005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NlqDlAwIJYknrvywbiYUNFijxXXjVYYTdYhTXxQXo5pXIVGkamPKk86yTSu9?=
 =?us-ascii?Q?ruegEjF1VJE5ei5e/CqwrZUW9yUi5h4tmxcFnwWVdA7okaxExNLfMMjdDgiZ?=
 =?us-ascii?Q?u9b2kF6YMnEZqUSyPRXq0Pud/Lc3s6lPFEtzYzeIQFFtnHKjushzszSQcAUQ?=
 =?us-ascii?Q?kDwpKc7NP04m2H8RG80+SgKSIaFW5h5SRUYGJrVUdrL6xdhc9w5O4JgAVWmE?=
 =?us-ascii?Q?wi2oSWQeJ+EH98+i6SOdee4F/bfZtBR7N+xywnv54PQBi8lmnmihFhAg277U?=
 =?us-ascii?Q?9jn8/OjoQnAanYgJn88q5uXmodgwDTdt7spTdJu9LCtbqi1nrCWhEyPnHuHX?=
 =?us-ascii?Q?+81sgWIn6S5H7IL7E2RstDj63qaVfee0nGEhIVyi8NKtQYE7S37J5dp9VQPW?=
 =?us-ascii?Q?W2o1KkpxlzTCKs8Rikl1ULpx2DAEn6YIOZwFxgKhneVzGcpRq5PH8hcInHIB?=
 =?us-ascii?Q?NltPmaiAhqwCwPT0OCooJC3uQE40lVIre4Ozh8ye7rDQjZK0/wf5RGOLj6ow?=
 =?us-ascii?Q?jQD/Z9OEKr7p9iOLnndMN9YnEbwaOdSY8/dxC91qAHZExkFuypLAdx7Xi7jw?=
 =?us-ascii?Q?zClOYMFR2RgqaZvI/Of16D4DfZVRvs3ZZvqWPF+NIdQ/9xoTIVA38nNQext8?=
 =?us-ascii?Q?wlpsLFgrqeLpMkAiC373V6wSy+QarUM9RO2QwVhaalgcBIChPBiC1vs69SL8?=
 =?us-ascii?Q?SeOEEOCgY8HTgFe6/QwuvvHf8WG6Do4VwxPp0S4mMDUmPEkU8URpoJq8u3+G?=
 =?us-ascii?Q?ZUFxAWJGP1KhOsKcgfJC6/zCYVqPGqiblTQR0q/Myp8SWwm2LTwGPOTe2KMC?=
 =?us-ascii?Q?xbSRgxp0W3x49LUEPFblVXh5o6FhJ4OGMOhB9m4fygCVJl+j8egPUKtV7eIK?=
 =?us-ascii?Q?rMBfRWXuUEppfomUydmqf9QQCt5zDLUYnrRw/znplLTE9pwti4a9urKKL3Q/?=
 =?us-ascii?Q?wBZt8Ta+tBv6ZQQvUmdYvHGoeKZ9u+J3BVHBigZ/9g08x8SIgX/tdhoSqBJw?=
 =?us-ascii?Q?S0cwawQ8cM3rBZukTQtL0ze9BIKAKrRVmR7UNBAngpH3OtBFraaRjpZJPZv5?=
 =?us-ascii?Q?2la6osD+6W7RhLDpvBp82tfDBeualDz8GB2ZWW2JE8dt2/mVHJ0+AHxLCIyf?=
 =?us-ascii?Q?ALiw+Bq0iyvzs8TBnFyGuApkOo5+6V5fsm3sAdgcxvCuLPuCQQxloVs/OsPp?=
 =?us-ascii?Q?T0N2U5p6rF1bY2goDu98yCY7iuaOyR+kYwVO1HjvmIDCTnFyKPCGk+2r0/jB?=
 =?us-ascii?Q?Ljg2kmIolc8grv/c74XXPPWLZvsFBsJEi3muEfoyO646jDfOVfyVxFXgZK2K?=
 =?us-ascii?Q?28BEmTjtXtfUO0aVOyxghfoXI7XBVQOLC34ynELCFS8T6sBvC38HGpQHOlzu?=
 =?us-ascii?Q?EVlVVoSpYFJxIsWJN0bZYm7JC2OG5WS3GtKlpx7/sBU79bp+K3ajzieONg5z?=
 =?us-ascii?Q?PlaNRAnR3kU6SLduM5u7Osj0wrc+eVb34jz0h1S562udfITMWIdEHiTrtdYg?=
 =?us-ascii?Q?2tWBW70goiyhYhpG9q1Cj/4tUGk8XgDZ71Fw7JTU8pcRDOg6fpm1g0yDe5Zo?=
 =?us-ascii?Q?gMoeVhJhBRUrR6HDOqBNgWGxWL9DXEQT26yucsOHWWQPnxfWt4oKPkL6kfkT?=
 =?us-ascii?Q?Lg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac4e3c36-66eb-428b-a476-08daa0336fed
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 02:53:20.7967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uYITYW0YcupdBJTwLPSn5ufakkgeObkEyAsc9PGSHs3EnxDCtO2rNosMH/zlr1LDlM80ghAtbvVJoZy1FqCN2FnfTYVPlZUDCNMOn/BPsqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7307
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664247213; x=1695783213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jcBA/kdqtb4O1urTZg7EYOnQSAu97BtKL5i65shY5L4=;
 b=JY1hAwiavbjmS/DwJQu48w5MI9iwBIHz6J3vXH+s2LNSLNJKstPi+rje
 EmbKY1ynsvxCWM3QzYJzDkotBjzTdYj4CBI9x5ZlS2q2EUyAU42QFlCjU
 qZxG4x4yRXko6VVMRMaI4KUlRxTTK3QlW7VvnY5zpHCcMX04on3tk/xnW
 TNmIEnsndaZOxjU2KTudLm7l8axAxCs/W7aWX+HW+thXZ8hrJlbUXLV8X
 u7MT39ISdQBC4wpvNXOTXIzz6PnjEAKjNO058ueLTWTaJyreRiETi8uZx
 vbpW3s17w/m2iCyDWhRy6p/N4YS1Rwl1uTlO1qsI7qaDMsE0tSQnSsEbC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JY1hAwia
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net 2/2] ice: xsk: drop power of
 2 ring size restriction for AF_XDP
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
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej
> Fijalkowski
> Sent: Tuesday, August 30, 2022 6:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bpf@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-net 2/2] ice: xsk: drop power of 2 ring size
> restriction for AF_XDP
> 
> We had multiple customers in the past months that reported commit
> 296f13ff3854 ("ice: xsk: Force rings to be sized to power of 2") makes them
> unable to use ring size of 8160 in conjunction with AF_XDP.
> Remove this restriction.
> 
> Fixes: 296f13ff3854 ("ice: xsk: Force rings to be sized to power of 2")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 22 ++++++++--------------
>  1 file changed, 8 insertions(+), 14 deletions(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
