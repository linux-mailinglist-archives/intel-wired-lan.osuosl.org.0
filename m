Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEE45B95FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 10:13:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97E0960FFF;
	Thu, 15 Sep 2022 08:13:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97E0960FFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663229600;
	bh=bGkQbnew+Yi3Bl/4bJPXsFQSjhXZ7rOkT1yqj8iVxUg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VRcJjMrq5Ofx8eQ53eM4t9Hpn5wID9qq23wCQ25cdiPJ3lr0r/qXQpSN8VfR6p1aQ
	 vQUSfRFqGqVe9KqG8/8XLVtZSWniRPdFfOz+00T8+D4++p037xzJy38yJSXiMKGRk/
	 hYtpbD+bRocQX0AjvaKn9HbHO8/EXHKSg1E3INAx8/fDw9t8v9aEQYqJgZT0JYlzKL
	 Iam8TjOojn9Z40cvi9x4PxbFWO8rIkKM/lM8wbAOCuU90wYmVWUy7RVwkmJ6qUOAIk
	 ZJX/R7+SAI7KnUtzgLolK7IPdqHV1OYhqSGufCiy33FRpcg9t0ogYjq0/8t7UTx3jt
	 qSJ0aWjSCOSug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5Ue-bXsGb4N; Thu, 15 Sep 2022 08:13:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CED760FAA;
	Thu, 15 Sep 2022 08:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CED760FAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED5911BF475
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 08:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C347840A67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 08:13:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C347840A67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DCE1W7dhZxX5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Sep 2022 08:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 762654013F
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 762654013F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Sep 2022 08:13:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="297375819"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="297375819"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 01:13:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="594726239"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 15 Sep 2022 01:13:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 01:13:06 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 01:13:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 01:13:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 01:13:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=im2udXFXlKngU4Cx0pM9NaAqILeh12q7S2LU0xcaPp/AfrMg+VkAXtl5S+8e7uRG+KN/MGjzmc3NsTXIGOMWbIrxfxxdAI1Qjh1csUaNWVEfPTJe2lm7yQTJmwNfbkX8v1MpARCiXlCbkm38eNt7jC/mx9hKQAFzgooy7G4UkGLik9sX5hSdoWhvHOT/rT6Mwdw4hnL/Smnsp5bk5UWJkzQuBGu+of8JM/OZ2OTG/J6BnbvVjNa1x0bRITOV2LMdPZJLEKt9KIEbIClB6QOyknK6uDSb/S0Phz4EvgaPoPj4YQl7DVJoJXJoNoWl5tHOO5lDR6lmxuWZ90+EXDFQOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J0LKnUmmPsZhu+nHVvUC/WsrYrAMqxwFyrrnQ+bWm5U=;
 b=a3z0acKT1VWjrVDfiGc/mEOiKjUo26BhsxDZqYgHkDp1LbGebZIxWY9iMpOiWpBDbuJ25RVsynDQFAHJhiU9HC2VE45djj2I59aVfJElTdC98z9mKj9sZA2HOIjLqmz47tO/ORbR1HkFioj+vOE++DhDCjwAeDmN2z5xIgysaEhXhtaJlujDn7WlaRdaLIPEwvIsAlbDyrF7VfP66nYNrXhTNu265af0eWr5hRZtPQmMvySgKVnj2erIq8RHmj47+AnpPrao/fiCc8PgrTrPEGYMBWNNOEt2R8KXlCfDaXVFUGeLDcrGYRFVnLXgmcqZ5CMJ0GVGYAemQuoPeCDj4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Thu, 15 Sep
 2022 08:13:04 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 08:13:04 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix interface being down
 after reset with link-down-on-close flag on
Thread-Index: AQHYuSZ54o2J3VCh602eQOEQU3Oz9K3gQ35g
Date: Thu, 15 Sep 2022 08:13:04 +0000
Message-ID: <BYAPR11MB3367A52820713916E3384252FC499@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220826083123.3334637-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220826083123.3334637-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW3PR11MB4746:EE_
x-ms-office365-filtering-correlation-id: 9d2868f8-7562-4139-0b10-08da96f21d77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MKLLkzDENWP/NrrSjXvdEgl2dvy+kTXbigaZ4xrKPj1yICm5pLXj03ju6T9N9RioatyDbatLq0gEToV01jmXMl1O5jeJi75IOSnBjBdPfS1N2USnAfgtOR/hP1bPmi4pvxlZJtWEoT9sOMK7Za2NSpJj3cY3eXzLV10d7NEky203IsxGnecwbp4PvgHkJ14+A6+VLYD5rLTGot/cAkMPRzcThCjQGM1xB9b+am8F0mJ8nJc2iq8UP7y/paHMVRHk6IA618GlfKHSWoyXt/CjLezvthDpFWXvz7ePuT/4Tef/Ok2JDkjT7zLAjOw+vEfnNyxaf2YVBx2enUK7qbGhQnr8gG5CW1DyFcjycLsvk1ru3TaWGkZCy+A/bREOnOdneIjUrgBZgOc4clQf1MUU5LLFXYaa1U/sR3/vN7obRsa0jEj/tHKIvcmIVBAYg2BAtgqR1qk94XSycULvw+yXkrI/PfpikNcWowm5u8QDjyklxRk5QQPMrkwGywRyPasBqyqFjECLR+K+2SS+nxzyQWJK/9oIA6aoGj1UEbQrxAoLnklOZit3D8Fsaj0Cq0DRauc67/79tOAj9ofcwEfobjSkfWHRJ949NKlLpsWXJn6bAtOsDUjQZ1ubxBuJjbB4RJ9ECtrD0raxa9h7f9v7jea3nBFKfOseMqJYxs4MMLlkzf0CtskFQ/HipsAZ/MLT8s5cTiH13mabiYtOqcwqX7AFPTYgaUoeURLHgiFhNM2rGu7rfI4WhfafK69msEsYDcAAXezIbiZLxWWH7VI0tA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199015)(186003)(8936002)(4744005)(110136005)(9686003)(86362001)(316002)(53546011)(41300700001)(33656002)(71200400001)(478600001)(6506007)(7696005)(83380400001)(122000001)(38100700002)(52536014)(76116006)(66556008)(66446008)(66946007)(5660300002)(82960400001)(26005)(64756008)(8676002)(66476007)(38070700005)(55016003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pf/ViDcUPAGOMjDuvtpHtI1WNepD5F9utMLOhmaEYhvjHw08Qig6yYMiVRJn?=
 =?us-ascii?Q?MotqeLZMBsGIga2OEbTMBP77GvVQpFrnR2AygpvcmD0naiQHPQ/R4vjR3fNv?=
 =?us-ascii?Q?eRI6w9fbYvbJVDc/HGqQZbvmjui+9i8XlADYG550KYPiJG/TYA6d1Qa/Ig8A?=
 =?us-ascii?Q?wCZmP0RAggUMfr9GDPpid2/VuwDulvUcEcVZhlNSL0qK7pEDb3cVTqtrnGjC?=
 =?us-ascii?Q?LKYQyrdst59YOE2lRWRrLlsoJL0UyMmvWUtBYssQ37tE6PbLq/+RPnjY/Jdl?=
 =?us-ascii?Q?iBGbYGWa5vl41x0py1zXKTf0e7uHGKxXurCvlL4cw3wx0iVrNl6XGXNOMSlf?=
 =?us-ascii?Q?SuuLBl3xy3bwo1LoVKRSObKON4o+oYL/0V+Jdx2aseGbFCazCual6Bfj2oKL?=
 =?us-ascii?Q?1PFfIKZnPoTdJIaz8N8tKZJgEvq8hTuZnohzvuDgjgmGM4q/VLrIFkcR5a77?=
 =?us-ascii?Q?mhilSvfWcMkQr46CCEcH3yiJTNfqSFmDksTASfTiDZks6LgBh1NwdolsV6t+?=
 =?us-ascii?Q?+S4JTcxFlonF9dIfNiWMR3oXRVH1xXOjomNjs2ijA+m2WbCz4nMl2tfJKMpq?=
 =?us-ascii?Q?FtgF8EUbqyumePkEfqeQw3MpV+P/NIAyvvvEuHZpeNvl8eMjYuz5iyeix64f?=
 =?us-ascii?Q?eLSoW9uRFarjDnCBFloF/SsnSWdHsVsGN29picu2LFVAcJqq+dFmVNU/ZKFy?=
 =?us-ascii?Q?Dvq5fBrIntq+/HuGdtaLVV8RK1RTNBv3ogihzG7n8eBHakx7Mz/PMJ+jXThP?=
 =?us-ascii?Q?exky+G5RLQOV5C/SXP6xS9ApPIuh1bbXFLV43hGYMm03C+fFsiPzIE6bXYDs?=
 =?us-ascii?Q?nGvjfESz6KvYnhhP5xmj1O9sDG3JV9JypNIxZq5cmxgl1nqEPI8zb/0/jHad?=
 =?us-ascii?Q?DzJndIlzzyv8QMj/v3kMpYbgLlrEQu9nJtdpSQ03xtpD4cIAiHAsrQjZdw5H?=
 =?us-ascii?Q?kP1jqqvMw32i6Fe9lgvLcw6Ua5Z0W99EVE/PVlx1fG2GWikh/6fXJeQtCfnG?=
 =?us-ascii?Q?dWY4rP7KBMJmKkzy5LFC8/1hwMYRyoAqczysrYLNriXqmp8NRivxuTP10Y7q?=
 =?us-ascii?Q?QGAeUIE/VRvCqsBNqXb5Y34depQPCm4J0tm74VaP4iZCMxKf6hnT4QqEdk4o?=
 =?us-ascii?Q?Dn4doihTnbw0iKfjL/mAyuw2+Ylg7Tog4AHdS70mGnhxCy0yi8YKrooNSHLN?=
 =?us-ascii?Q?ceWgxEjGlhiuz0zNW7ELGjEiv6Hov6lr8WtBB1xZhPBlrDJYJoNuw8EDu3qi?=
 =?us-ascii?Q?I+/spjkL5JVpQBfrRU7j4h+22bfiBaEL70EEcRlqi0qcnO9/Ne35dX9LE7OC?=
 =?us-ascii?Q?WXr7pEmEJXth2taKRPlbNU9kWwlFrFZgLeAAyCrFoStWbyzDLJSn1o0TY2FA?=
 =?us-ascii?Q?ZEEbEfFZJ1vYMGK68kqAyMLwJs73PwvYuuQKGTO4h+K+qZX0U0ItYH+S5jYE?=
 =?us-ascii?Q?GtDtID2OHGTRQqD5nvpfHoqj6+IQqDtkEsXMyi8WEvU6XLE4E6JKvkj8qWid?=
 =?us-ascii?Q?NapaHUxP/GbVikoa39mPWLnZivAlKkpVtPjTwxTTa+C4MukEQJ7aa1I7oFbx?=
 =?us-ascii?Q?fladGdzs3mQkdrVyvIWhLqLQUw1l51cqLsDhEZgq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d2868f8-7562-4139-0b10-08da96f21d77
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 08:13:04.6626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VL/8p374fAaQlR130cyNfKz8R5rkZE9y/70fnroWuQSLAxdWMvnyBZZ2Au6BNqApSDONMS2brr4IUc3luTQ9YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663229593; x=1694765593;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=T7HV9WVaXjXSIjnTWu6p6o3WdpT5tiL4bzjwdYfU/HE=;
 b=L15g4xsNw+KIoitAkUDaWX9n+aGp+qXLCFokGSvII8l2QmsPxNWnJ5NA
 Hwts7eVHJIcPAWwk+x/pu3k+KE3Wn/ae92TZ9fXSg8iB0tOzlXG55MFJM
 Gzr94EUdav6lh2dtJQWUlzZPQwxYL1mFtUpT8qH41lGKqAUAOmzkFN8vV
 iQLTKcqAoQeJ9U51BeHrGFN/JRa1beua6JBJmlpkCIlPr8IjCi0z6BRjX
 ZzHzRClLoqThkE6dAZgpivJ3otSg30/cyN5nytUYnCaMxF5zgUC/lnnuP
 bvt1ZWKDUkiUn2yyrTuVGKdkiFJJXemri13xhyD3IPQOU9fSzdrcVmQjy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L15g4xsN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix interface being down
 after reset with link-down-on-close flag on
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
> Mateusz Palczewski
> Sent: Friday, August 26, 2022 2:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix interface being down after
> reset with link-down-on-close flag on
> 
> When performing a reset on ice driver with link-down-on-close flag on
> interface would always stay down. Fix this by moving a check of this flag to
> ice_stop() that is called only when user wants to bring interface down.
> 
> Fixes: ab4ab73fc1ec ("ice: Add ethtool private flag to make forcing link down
> optional")
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 21 ++++++++++++---------
>  1 file changed, 12 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
