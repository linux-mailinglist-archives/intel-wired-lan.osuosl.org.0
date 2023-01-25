Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C6A67AF8E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 11:22:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 309E16108C;
	Wed, 25 Jan 2023 10:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 309E16108C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674642176;
	bh=CGem/3hYRwODHTqm3Tn94Tn6YRdINDc4UuUJHfZmV0w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o3VSM7v2HGYNFSjVSA8eAWjiQhsvgMQtr3o9vklhEBEniyt0RiV9fENGmvvrCWBEZ
	 rZwDA10PtnAsPLrNZ0KClvtfdUoPoGYix12blUDg30aYz9qZMjmG8MvaVaIJEMS37r
	 ZvhuLX9IgLjjdvOYRr2wpcV8M/SAuomzf59B/pU369xkVObI1ftSM3y8uOfvD0B6gQ
	 9j9XfIUVYPMT/HhAb6yU+nRR5BGexl2zQm5pRTaItOeMAByIsJNtfBKqSNclcM/HaW
	 e4R+Ku+cvfp2lj/dd3volN1dXEYVVdRXhOdOG/ATK4jDc2WdOQ4HO8+gfS3ad9mJm5
	 2w3WGiKQ/2yFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJjTjLrxgFQR; Wed, 25 Jan 2023 10:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EE6561080;
	Wed, 25 Jan 2023 10:22:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EE6561080
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6739A1BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E5CC41833
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:22:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E5CC41833
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VzzHxOYvUqD8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 10:22:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E334841830
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E334841830
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:22:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="314426937"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="314426937"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 02:22:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="612375282"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="612375282"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 25 Jan 2023 02:22:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 02:22:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 02:22:45 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 02:22:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VTdrYhZGdTC+4mq0N8FHdLosYIUWjd/JAfROhNbwBbYOtd3QfYwCKUzrF5qdnu8VK5Px6OLA6sy5y825ugYqBPXi+Bcb8Pt7EIR6gZrIZsgoKa2slGHtWY8fruS3ls7ofVjHHHD/dBxPdxdTGS4Yvjnvdoh3UcWOhCL3Ae+ke/+Y+M23NN8o5G6vHz/GKJG2Ar220pN9q17UKTkl54Q3TfrygZru4k3JVulJmROFtvSpPxPoPmDbrCUeZkBG4iic1NDb66TmbCIiHuWRddP30V/OBviG1hpaplcm8c40cRR/BscM6A9i3ayzfvZp5KKBODVoeRwDHx9HYMYKbjGInw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=binvmO5uKzGnuYzPtpdsoMoYD6jTUSUbg/48GiYLREE=;
 b=gUFaNGOtLDhA+G+wN6eqhYTgvU2t+YQDY6UY05WDSeexVo7YjcgODsLV/tMCYPxqU8WfyHa3es02E0EZCGya2x2uDhdlAIRTSJTHBd1qUsd40JUazFQ02NJZycWfZtcrlP1eZXImmGLJ+Lk4Ohadz6JiAFvGCsa+e969bp3Tk/hUs99jEpS/XlO5TtPNGviRkhiNyji4KbN0EfjZWku1jC6ERSPDnysZfEeSIKQAQaWta5wL9a0w0i1DEgRTs4JTErtteUEoLhKP8v6hGp1uAnLzRi7PsyYqQVy+OmiRwXKG5yXo2W1EYtSwEgLx4Bj9F5yZhaUcWFCdIXT1n57s9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CY8PR11MB7035.namprd11.prod.outlook.com (2603:10b6:930:51::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 10:22:26 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%9]) with mapi id 15.20.6002.033; Wed, 25 Jan 2023
 10:22:25 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 5/9] iavf: Remove redundant
 pci_enable_pcie_error_reporting()
Thread-Index: AQHZK5c66oXgidb8I0a9BKHSCdazba6u9loA
Date: Wed, 25 Jan 2023 10:22:25 +0000
Message-ID: <CY8PR11MB7364455CC57DDCD4F78D6428E6CE9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230118234612.272916-1-helgaas@kernel.org>
 <20230118234612.272916-6-helgaas@kernel.org>
In-Reply-To: <20230118234612.272916-6-helgaas@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CY8PR11MB7035:EE_
x-ms-office365-filtering-correlation-id: 736bea4d-77cd-4b9a-3389-08dafebe0df2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b6O0iqNui4syV/YooHw668VJatfov3Nn+CVJDCL4wqs5dYGQY06aFLWarmWRqmevDpCqAZj7l5RExbcFTIbX2SqdSK369goFdUPVE13H6qjNvaqoK1gleajVnYaUhjWrvXpZXKTujxf5aP3hzC6WJ9lv4oaeOWtjGexeL/KC2wJwg29JmfXd+uF0Et6SmOAfaYyJfLPhI+Phx1R4iaDu36Wwkm01bnZbuwAcmbRQX5cxLqR6Srvc5jJ0A5QXRXVfcoiOUshipGXzEo1w9XgORwe5BlpstT0W9p9bNstlzitnZ1ZVJomQ/rms+4HxbUtCwly7AtxB7zMY+5aY9Xdh7hxJXYHK+7rrN5pj7MG6/5MavlY4LiVvz1ZCeaWCY8xr2elpAIblKUIErLatoJBSC+5kOEJ2R5Odnz2UzF5JKFBTg5IV7qUF165MAubVYg+stvOTdKdp9M1S3rPKT5XeLGv22IQvYpdRzSrT+5R7giBk7rUsSLXPBU2JUa8PhwwuqZovBOVxjbdu7vbpWOnPVcuX7a1zPKXrz1MKxZ81Kc31MwHM/r2ICpUjl/dzvXQwF1xJCGB1eyQhSWWbh8Gi0hQmSxIHF16iVxrcX4Bb83dA/TK7UEsId8OaUhmLZoVc58xzc61D1Gvk9a4Yfl956P92IF7jIxG+iIy+0Uo7ISIZZDD/VvaShm8leYp2Evj4kCJ7g1TqkOm8iVAEJryq8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(39860400002)(136003)(346002)(366004)(396003)(451199018)(38100700002)(33656002)(122000001)(83380400001)(6916009)(66556008)(66446008)(64756008)(478600001)(8676002)(186003)(66476007)(53546011)(71200400001)(9686003)(38070700005)(76116006)(66946007)(7696005)(55016003)(2906002)(86362001)(41300700001)(82960400001)(26005)(5660300002)(52536014)(316002)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Zq6scLfay80i4rGYexdxHC/NOq9ueKSXfVBP7YzV8rcJXEt5+RaVxLJUVIA1?=
 =?us-ascii?Q?4/GhFFhJggZmsGqtoU+L1Dsgyb+bLoBIxOBW07SfvgcK0QaIuJhncN0DfT4m?=
 =?us-ascii?Q?9OCWmZm8DF1nSuJx1fY+lZzfkOZTB1HOJj70KQjmSwPU9o7nAtMZSxj/8m66?=
 =?us-ascii?Q?0DhVQiLyRhHStQse7kL09gTiZ7j/1yOapHOZYvdwId6NFw9RoosYfX3qMDZD?=
 =?us-ascii?Q?K+IHoII5qsD3jZCijSza0veS78tUzHC5XsnPL6wN+rccH8VgVJz6OmQL/kfZ?=
 =?us-ascii?Q?YtHGgqPC1HCrTPIgmZzeSaTNjQf5SaNatJvDsLfZ+ciXoJ0qU2mT+z9gczd6?=
 =?us-ascii?Q?UHATPlfJBuMP1xnWsB/9iE+P75VlgmOQfJ5EnyJ7oOMNiQ30GsWos75qQ+wO?=
 =?us-ascii?Q?FNFZhgHhCu6eVXOvsO9MsEh6oLvq16FHtUqR2ok2c5hmX4pVyiNm46XgMyIR?=
 =?us-ascii?Q?J7jz6IQkJGY/Z8MFxXth+W8Mi/PQWU/fdfJcVVlr3cO6pHOjWXXdyCRz8p2S?=
 =?us-ascii?Q?kqJGHqfS5O4TYD1f7avwmVz/epHf/FQmUen5Gm8kv5+sFOO2VZLe7QLxCPxt?=
 =?us-ascii?Q?+rar1Vyvg7AI5uahGsTkv8MvUg8RdvtdoiC8zBrq1bF6GkXLWXyl+HYwaL9t?=
 =?us-ascii?Q?brd52PJvDWK3o6IukTvsGsy5CpgAJUV+M423c0bDeCNa5FEtQ61afXLq0eeU?=
 =?us-ascii?Q?reo4/Ii3OVzEI+NwN5ui2TLUaNY0v3aQzVlJjA42QL8EpBGrKnk/hyFd5S84?=
 =?us-ascii?Q?uBcMlMyNZF6GahsZdmbotIeHOLjINH/185KzTN2aa4J9AZeV7IhzRRUGZURB?=
 =?us-ascii?Q?tQlgims88t7O6azlqU0CJqTn7Z3QOCrzPNQlCrEJ1FYd5Q1doDBmaQZrx8pq?=
 =?us-ascii?Q?62GT3GDsl4k5/X8qkb1AUC9LbG+Dkd1GmWzDJ63DaLR9C9hCNTYJP9Bf8u/J?=
 =?us-ascii?Q?eLUl5ZJN/sTZOVzSHsqnIQqDitF4Y10hF+muKIN12cUIgDl/74Jrfp3OzAHa?=
 =?us-ascii?Q?TSpmRRi3d1YSuYgM3vtpfNjVC6uoguwhEd5UDkFpY0keqlUTsIHMaXarDjZD?=
 =?us-ascii?Q?B5+WBYErkNFCN1L2NnqvaSLbmow5tDui+KUUa45IXOe06MQs3nB7iOHdpRvC?=
 =?us-ascii?Q?MMlDX/s6YQzbdYwJx7lMXNt3PMIMM5RVLgdlyEyXkz9fqZ27WXGFWQ9e+sNq?=
 =?us-ascii?Q?bUtsE6yloM1mUwuY1s+povJ+LPT0+ot3CLiE9uoLJaqRmeWc0Vo0T2SvrhLh?=
 =?us-ascii?Q?wpnLhzmOIiE7QwvTxtLxbNRO3sSf0A3o/JmZY9gZ+luT750qJIyg6jsMR4rH?=
 =?us-ascii?Q?jUCoKbLXOpVy2sTT50Lu2jcu5h0EGp9P9IBRnN/R/EDHPMnOQ8x/HsV8Y83T?=
 =?us-ascii?Q?JABltNpMUR0k1FstKEHpC9NnfzHo+9d91hNFpzg7XnI6hsStuZ4YOIqQtWKV?=
 =?us-ascii?Q?iSleGG3UVn5ki2INqfPY20E61H388aQX8GZrbS+KgACUIXuXeXoZhPbJi0ot?=
 =?us-ascii?Q?8ggmGbPX4aiENDyza7TrJAlRzZATsaL23/a9uecx1ZzDTag0I4rOHKCwhQ4H?=
 =?us-ascii?Q?WL6QcPxs5ORZ1Ak22IJ7pKMla51TJ9gVN6ypFopx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 736bea4d-77cd-4b9a-3389-08dafebe0df2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2023 10:22:25.7252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BhJdaOf6bUbxoaqvbQxXsN1s+5UK5eLhW1IrD0r6oB2t5vGL0iQUFRvUtRGnhjebArbqjAKGYtgbEOgBFGvr2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7035
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674642166; x=1706178166;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AUH1DWK+qBgzQ4MNTij/KDEyJT/HNb1YqdCg80+Ll+U=;
 b=lHLLH3loai7pdyqNRRibmbny+2OlP1A2+UNoQlkD/wYOQ25BYraK6r3z
 N1RxpDlmX5HNlpxj7RCQwHDD1YWkWcB4S8p8NqpLvbTPtGGacNzhL7nYU
 11noI1+d6arO5Po6prZ/kRHQDRU7ZlLQa7tSOtliKR5dx1AODh5QfvUaJ
 PIv5mSSmTVWkEUcYqEEBJDJSynlBikvTdx+tMX0EY6zbbm/2D9M6UBmFo
 ANG1FeI2oD4puLN47JtsJ1OA6dYh96srwQ8yZukMO9852MYuwi0NFl4eD
 kbGcf7jSzj91MYEw0PfvnRWmL/jt6poNACCOd7EPOzJq2rrAWd6qVyyyV
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lHLLH3lo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 5/9] iavf: Remove redundant
 pci_enable_pcie_error_reporting()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Bjorn Helgaas
> Sent: czwartek, 19 stycznia 2023 00:46
> To: linux-pci@vger.kernel.org
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; intel-wired-lan@lists.osuosl.org; Bjorn
> Helgaas <bhelgaas@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH 5/9] iavf: Remove redundant
> pci_enable_pcie_error_reporting()
> 
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_enable_pcie_error_reporting() enables the device to send ERR_*
> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> native"), the PCI core does this for all devices during enumeration.
> 
> Remove the redundant pci_enable_pcie_error_reporting() call from the
> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> from the driver .remove() path.
> 
> Note that this doesn't control interrupt generation by the Root Port; that is
> controlled by the AER Root Error Command register, which is managed by
> the AER service driver.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index c4e451ef7942..2835af20ec19 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
