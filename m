Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 338C35E67C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 17:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B455B41026;
	Thu, 22 Sep 2022 15:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B455B41026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663862250;
	bh=bZcDVcujQtB3NO7K3ygQy5/tu2mrvC+l2XU4gH51lu8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5k7vZ5AqEcjcCtcOwEx7/EY1N6Ief+ymRrAaLqcDbSrkTcPXIxQegdLkc/QHzPQwK
	 uSDk/bnOoZEQCzDuWjZu1FtNqt2cXLm0gZU64ZQlgYF55h9xErtDLw3YE8Y/ZJwR0b
	 T6P6nPhPnWI6bXxGTk3jC6caBGTi5d+RNFEvTfAc5zDZ8ROCJkL/jY8ww+JHk6oiM8
	 R4KjJtJyi0v9Izv+0Fhr7iT9VoRiL6W9cRGmA/XC2elL4rl4XMIezRof7OsUlfFsLy
	 WuBY43W07mOnTJwLiLIJpvbPWGqrvGMXInnW2pI65yYui8NHUV+xYT6A5wx78XPccq
	 yfnoB1S9Z1JoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwCXA0NXG_4j; Thu, 22 Sep 2022 15:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 549FA40C59;
	Thu, 22 Sep 2022 15:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 549FA40C59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 248E31BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A79D6112B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A79D6112B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UPxjV7wmPtzQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 15:57:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F085B6112A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F085B6112A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 15:57:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="326663188"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="326663188"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:56:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="762235050"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 22 Sep 2022 08:56:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 08:56:56 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 08:56:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 08:56:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 08:56:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fSeWH4ZByqYtVjVD5EoPuXpir+uVixD1eGxRvbtig27MGD3a3rwk9scCspmVQSjNTsTgIkcR6c2ONCkCsJYTPz20+lU9Adj8ikOcrlvZhNUX+2TNRnwx8AlHPKEa0L+DY25vLgsF9MaUGhLb6c1WvwURDDiJ84gFpge05q+ylVIL0Iem5eE5gTi7kbn0R2zjSvmwBUqer6/ZXofn8K2TBdXXJE9f85t/dtaxuuNs3u3JY2w/RjXqcZu4Mp0bT8UYOVSAb0DnWZRZDu3hRolchz2Kp+MtzK/azMn4IaeHz5GDSqTFuKyOud0deg9KFeflV2enxVEYjxEX7rPOPYevWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=trAbfyrgNkR7xuExoF4DzRv0PX48LpnJC6AN2/Fyf38=;
 b=eBmwfoLbOsPxH8CMo6gJ0V1nlOUO9FYKndvFThrC1uZMjo9HSVW/zyP1gUdGsfRQcrkaTZPJ1rI4/7khnkYi+yNvg2itk7xTie12ALPafx5tYOnZdO+DGC1Wz5/u17zYNHWcBwEPhIzDwxykTi6ee9953qXLysNuKCOiX/sWuU6zoEWBtnzUI1UJ74IYMY8Xu8rjorNcuDhXx+3RttWqm9WzJJ+UjW+3/+dRuoUtF4sErGQvroNBN39eGFA65LzOBOBPFDhOZVCgivq/yWoNt/lpI/n6FjkBkuiRJSbWsiBKCQcPKN+X3ZsNMxkcvEGK00Q3ulpJ4wky0awDlI/QYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) by
 CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.18; Thu, 22 Sep 2022 15:56:54 +0000
Received: from DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::64f9:b9bd:85bb:c756]) by DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::64f9:b9bd:85bb:c756%3]) with mapi id 15.20.5654.014; Thu, 22 Sep 2022
 15:56:54 +0000
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>
Thread-Topic: [PATCH 07/12] igb: Proactively round up to kmalloc bucket size
Thread-Index: AQHYzjEYR++WbhctVUaYQWdb/SDWtK3rmzpg
Date: Thu, 22 Sep 2022 15:56:54 +0000
Message-ID: <DM5PR11MB13241226F3AACC81398F7E8EC14E9@DM5PR11MB1324.namprd11.prod.outlook.com>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-8-keescook@chromium.org>
In-Reply-To: <20220922031013.2150682-8-keescook@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1324:EE_|CY5PR11MB6365:EE_
x-ms-office365-filtering-correlation-id: e49b8d06-731d-4d65-73fd-08da9cb3122e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yx4wVTC2/tXsprCvmQJUll5poreZgQBiJxFekyq8YDHSMGVrAoW0Pi2VqCgOp2XNx44gdSEtHfTQf2wXw/7640s91qnMwK0UqFZ7mze7Ipe+m854wfyEMcDcnakritO1vAZ3hO1Utp4AkTGB8+SollHrQEjPdZg8neZ9b3I7p2BhyxTnTGQDx5MdvunTPiZcVKQW+cQJZwN/+wZ28kdbF1yhwMJEqpa/DSEllTyaXZC87dJ440gGletKnjfPAZqeycip//lMP3U4wiYxnyhd3mj1r4UAmJMZ4J463H/RJGqzVchclG6rqVRCcDYOXFUq7ZFMnwP52VKnHytl+tETxTV3lFCMzaBiPIaQ4fslMmDytZy/6242R+M0LbCAf9XuB1CUFIc8iCglePoP3vBcySr2fws9zzsW8IyUWz5ctLTQ4QDx5uUmdhC9/tpxALIIhLZnQlDRfZYMQRj593W7gRSIxr1/oPEX9bN7HQL4bV96vB2rNpWwfHiTgkXG4pY0O/JmR2gYLn9h8CnIN+BXU9IakRZ6JOZHxCaeOWEmNGV8zXF2f83Eew9s3FXClMSoeBb2hdLsm/mmQk4OUOqoneCNngoTQt0J6oeSgLeyQY6thffSNDP3MIMwKSEkCDiwqZVcuIe4Ak8zMagpSX31PhAxsLlTlzN4XM0JPvfLGQ6k8UehEaIY57p87GNWdUWMZqyQlki3JPRZou0PFuybL72Q5GBEmRTn+9tyr0VcOMAXHdH5+aHsG8T3FehbBp6l5KQofebKKjj/jOQ/l68Asg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1324.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(396003)(39860400002)(136003)(346002)(451199015)(38070700005)(186003)(83380400001)(26005)(82960400001)(122000001)(7406005)(7416002)(5660300002)(41300700001)(8936002)(52536014)(55016003)(478600001)(2906002)(9686003)(8676002)(64756008)(76116006)(66946007)(7696005)(6506007)(66446008)(71200400001)(316002)(66556008)(66476007)(4326008)(54906003)(110136005)(33656002)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zJhFA5mxPgQpqh/ck+6T9IyB+1LM/uzPHowvaMEwnBkee1ETzkSvs+0zny?=
 =?iso-8859-1?Q?seQsS7RNJDEoTaa5iJ7voQOG4o5vCngruymmV5oxTyzqGM9C3AyKy4WsJA?=
 =?iso-8859-1?Q?sbyCNzE8jaUL1tV4lQCpg2q4OIRVVqPpbcNdtm3oxg2Xl1aOjgDohxRqnE?=
 =?iso-8859-1?Q?800pagqVHeFFUId71tv2PA+vXaE/1utooKszx/z7KHCuXmpdezYCLwHJdK?=
 =?iso-8859-1?Q?DLVCEmAC12e25VoZqDXJMkDKuQXQVusYZV1O96vcFTsn0phVbHBtm3YsG1?=
 =?iso-8859-1?Q?OnIQzDFuapjJVdIIBZlD0kYp0RcgkVCwqufxcJlDh9NUpzwcQ7GbFw9DAV?=
 =?iso-8859-1?Q?BqCvL7AuVKJTcpETvB2YCSllKSWl1LnK9gv74wbnDfBEYC7fUShOp10u/Z?=
 =?iso-8859-1?Q?w9kMsRxRzsmOcHEp3lN47mJIVIb4GxgTTCEOSttmDt55QWSlY5UH7UBPeU?=
 =?iso-8859-1?Q?UTOjx/BItUq33R35fqEszW8WuDIYKqiVTXmOLnZyKdr004Wq9bj1udc+uZ?=
 =?iso-8859-1?Q?PqFRYV6jYtBncdZwlvOSEQKmN3vdUzjw8PLpxUHGJuLIIOyJyJVs9JRWqn?=
 =?iso-8859-1?Q?OB4xfhRulWjG8ZiAronwYavQBPfRYZTF7LmgXBvERTq/AK2xFcvpgeEy48?=
 =?iso-8859-1?Q?uDUwp9IvOkDcdwvoDbkFkL4XXhZqHK2fWxpmwwn+L7weyJB/fLgDvIExkb?=
 =?iso-8859-1?Q?AOVpK6kxBwM053PcMp55vRkvpXLHmpwD6FvWWfE2iOsCBWIK1aHpK3+2Jg?=
 =?iso-8859-1?Q?RqdyB1M8g5ZlG2rHRRpxmftfcblergPLLcgvK1coAbeP1QNbygZonRUsXe?=
 =?iso-8859-1?Q?XkH1QIouCBzFyyGEwzJOjBjZ0OCWg2rwlfnFm0FHGpvacHIcS13Y0X0HrB?=
 =?iso-8859-1?Q?X3OSkTZgS0MhbAahU1Uxhy60dd5I3q1GAR5CtscSO5GqYQ1uq1oeUK9Vd1?=
 =?iso-8859-1?Q?6991XCpJwzrYsDvv+Lxq0rC69/oFZ8csY3ln5VMC+03MiebANPO49zVUtn?=
 =?iso-8859-1?Q?LPgNh47q1aiPwe2d6q/FoGW3ONp8Fl/SvAkAOBZjOK77RJZitkYrHaKWAp?=
 =?iso-8859-1?Q?ybCfCa6MXELiQuFbjOTNbsiRy34BnNVJI/cVmyL6gl9VDnUFKHGiv1m8q3?=
 =?iso-8859-1?Q?tgjig66y8xga5SU9jRvIxzIntdGCmZrCbPFGxPOxu3+DVRYnWaV7dAzxYp?=
 =?iso-8859-1?Q?8FGHxFT1e8PyxNgI22pb9hAyVyyUKqYFh5SLCiThRVPRT5ukA9y4KS8MPp?=
 =?iso-8859-1?Q?7rZ/1/T1K31q/yozpvDvKlpEkcJWU51DR7pea/Wz8UDiKBgLakI7051C7o?=
 =?iso-8859-1?Q?IRy4W38JGag7TMOlP2zH7JnBVPKOzQhRunk3+ins72LAy6kVKsepWh+DVT?=
 =?iso-8859-1?Q?pMzzAak+iK2EDsya8J0Yd8x1mZq0OLDjxijWWPsPYTBoOg2hBYbIjdG+0A?=
 =?iso-8859-1?Q?4NNEn7ODLBN/poPH9rFfioM2fP8kz4sODTS96YfTUHNLsYZ6PLPQ9BglYI?=
 =?iso-8859-1?Q?OCUR4SP9oBXNqTY5PU0ZVhoeMNJohfUMKac0p/S93BsEnCah9C8o7km/ca?=
 =?iso-8859-1?Q?Zd8L8ixqkj2Zf2xB72PIZET/oeAtFfsRUb3CRgqYd2+RGNjhvLF0rmh7N0?=
 =?iso-8859-1?Q?tueWHs/lzHjGAYS+7R5etVjyfJSdqepNEG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1324.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e49b8d06-731d-4d65-73fd-08da9cb3122e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2022 15:56:54.3834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B+vMJqqgOi99hRaZ+cvay0ISVgix+N3SnwYMj12dhqgFD5h6L8bos3tyP219+0v3Iiyismy5gsp3cmPheX8hbuA/hFwxG5zpx16XwO2SKvI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663862243; x=1695398243;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4nKJO+b1HfTFBxUR2AzjnC6O/cbewqKAQFGYCJbdZ7Q=;
 b=RLNvCur+S9TQrGKY7qqRBGwrhia6B44iO1kcnL2p1OkXFo6iyg5C7esA
 Yhk3wGY+xgCvdVlvR2VmCRBc8MO2E6xqCGSI4fIRkQHzQJFzvEAYzZM7X
 JrtGItTg9Rdu9a9o9vFEj8kYMPhdvnC/Z58AvrivdJe81hD6owbu/Oqh7
 pJPQVnjkf3W7DPZwJKYHQCihRqjI7hqBVs1x8y+QimwPGTkT5eq4QbT2x
 mWaP2z7og9LsDsD8yDUQgldMuQHKtZX43wOoM9rf1zpLktdmzpA9poXK7
 Do6JT0DUd3cEvLjNqyQCpTURNekl1famDbMwg2Z48ID0KOVfBXQomWcOb
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RLNvCur+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 07/12] igb: Proactively round up to
 kmalloc bucket size
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
Cc: Jacob
 Shin <jacob.shin@amd.com>, "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Eric Dumazet <edumazet@google.com>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, Sumit
 Semwal <sumit.semwal@linaro.org>, "dev@openvswitch.org" <dev@openvswitch.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>, Andrew
 Morton <akpm@linux-foundation.org>, Nick
 Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?iso-8859-1?Q?Christian_K=F6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>-----Original Message-----
>From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of
>Kees Cook
>Sent: Wednesday, September 21, 2022 11:10 PM
>To: Vlastimil Babka <vbabka@suse.cz>
>Cc: linux-wireless@vger.kernel.org; Jacob Shin <jacob.shin@amd.com>;
>llvm@lists.linux.dev; dri-devel@lists.freedesktop.org; linux-mm@kvack.org;
>Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; linux-hardening@vger.kernel.org; Sumit
>Semwal <sumit.semwal@linaro.org>; dev@openvswitch.org; x86@kernel.org;
>Brandeburg, Jesse <jesse.brandeburg@intel.com>; intel-wired-
>lan@lists.osuosl.org; David Rientjes <rientjes@google.com>; Miguel Ojeda
><ojeda@kernel.org>; Yonghong Song <yhs@fb.com>; Paolo Abeni
><pabeni@redhat.com>; linux-media@vger.kernel.org; Marco Elver
><elver@google.com>; Kees Cook <keescook@chromium.org>; Josef Bacik
><josef@toxicpanda.com>; linaro-mm-sig@lists.linaro.org; Jakub Kicinski
><kuba@kernel.org>; David Sterba <dsterba@suse.com>; Joonsoo Kim
><iamjoonsoo.kim@lge.com>; Alex Elder <elder@kernel.org>; Greg Kroah-
>Hartman <gregkh@linuxfoundation.org>; Nick Desaulniers
><ndesaulniers@google.com>; linux-kernel@vger.kernel.org; David S. Miller
><davem@davemloft.net>; Pekka Enberg <penberg@kernel.org>; Daniel
>Micay <danielmicay@gmail.com>; netdev@vger.kernel.org; linux-
>fsdevel@vger.kernel.org; Andrew Morton <akpm@linux-foundation.org>;
>Christian K=F6nig <christian.koenig@amd.com>; linux-btrfs@vger.kernel.org
>Subject: [PATCH 07/12] igb: Proactively round up to kmalloc bucket size
>
>Instead of having a mismatch between the requested allocation size and
>the actual kmalloc bucket size, which is examined later via ksize(),
>round up proactively so the allocation is explicitly made for the full
>size, allowing the compiler to correctly reason about the resulting size
>of the buffer through the existing __alloc_size() hint.
>
>Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
>Cc: "David S. Miller" <davem@davemloft.net>
>Cc: Eric Dumazet <edumazet@google.com>
>Cc: Jakub Kicinski <kuba@kernel.org>
>Cc: Paolo Abeni <pabeni@redhat.com>
>Cc: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org
>Signed-off-by: Kees Cook <keescook@chromium.org>
>---
> drivers/net/ethernet/intel/igb/igb_main.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
>b/drivers/net/ethernet/intel/igb/igb_main.c
>index 2796e81d2726..4d70ee5b0f79 100644
>--- a/drivers/net/ethernet/intel/igb/igb_main.c
>+++ b/drivers/net/ethernet/intel/igb/igb_main.c
>@@ -1196,6 +1196,7 @@ static int igb_alloc_q_vector(struct igb_adapter
>*adapter,
>
> 	ring_count =3D txr_count + rxr_count;
> 	size =3D struct_size(q_vector, ring, ring_count);
>+	size =3D kmalloc_size_roundup(size);

why not:

	size =3D kmalloc_size_roundup(struct_size(q_vector, ring, ring_count));

?

m
> 	/* allocate q_vector and rings */
> 	q_vector =3D adapter->q_vector[v_idx];
>--
>2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
