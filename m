Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54199622BC1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 13:39:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 672B7417AE;
	Wed,  9 Nov 2022 12:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 672B7417AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667997589;
	bh=xmhwSg2Qk2+97jOwR+8rNzk4CICu2t6dQHXP2G84ydI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x7/t0egaZ02d8d74yQVsPqqRuiXjS6FdufcyE8zXwoCKyBRV0OIs7wnuON/GPRF8m
	 uW66sWqmooHlea1rLJD3aNi5OZ+fE8W3La5J2G0Ih3+agLBO9JkHAMmMan+GtO1V39
	 1bJnpVSVr1tU0tRND3TlKctZFxoFzOqgVhLBN8Np/qL5IG22Tkzx/wU9KEGJ0UTMpK
	 BY3EwO49xEvbjnQfmK6GTLmMuxkUav4e1q/iNe2conDWs+uoZ7ryHP3lJ6u0LGo+AG
	 ERWT4fCZBWuyISz0fmWWVECH6ncdxnHMInH5QnSetOSxWOzf4YmfMORmYAEVa+WRV1
	 qsdcdcZoyxUGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88_FxyS2xSTq; Wed,  9 Nov 2022 12:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F28B417AC;
	Wed,  9 Nov 2022 12:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F28B417AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B0821BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 12:39:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3369A417AC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 12:39:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3369A417AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n1r8N4nXuVVW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 12:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32B8541798
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32B8541798
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 12:39:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312764704"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312764704"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 04:39:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636727414"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636727414"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 09 Nov 2022 04:39:41 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 04:39:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 04:39:41 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 04:39:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=evLqIzJtasvUL6YX0jfKY3Vg19DNlxUQd/vjdioTbjJNu7umV83otaldSNZcRWZ1rI6ikyJMhcVUHrFxU4tu32H8NSgQ2fHE2i5TcoH2UB3IghK+3i5QFwXrneO7LBCoLZsBL9P16S150vGleO6F1BbzgvyBG6GXHibl0qnzG3PGEKh+ZVCVHIGADpchsdtMulkYi2uH/8INUnyS+oEJK0sNHvCEubAxgBIKpEt0qwWKiGQ9N3qT5SsrT1wkGsJaGZ+YitRw01WLeXxkPgKkG0fn12NiqaEt6BiJAYes05b/+k1vWr62C/YDMvzyn8rgbKv4dmU+0uHj2aQkCgWulw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=61NXsZ8iPRZGXFxktsBgNiFAH6mBSKtPsRPJu4UOaVc=;
 b=EyKcxPSzbbEXqslQK5zdA+yiSJc/7B93JiWbqIuxqp4QgrtwqVg/rMkrFBYtqH839cAlxrN1qZ7u7or2kohwVmXfSFrNHnlnrrx9Qc+hfTcSqkl6mHnEraj2y3SJhoN5zNrgFK3DEXWvQQVT9IzYySsFGIEi2Cvzb8nk2L2gsuPYi5bnxGBBS7xv7LVrbQLeoVDPkeQU6B33zaweYljEqFWFqLBVb3DLqc7lYupAgf6EZSaYWawakrYRWTTtKBycYR/MNoRLVOOf/t/3Q3h2wixkY9ONq0Peie61gUr4v02h3PzqcfgMmCdV1gjjhKtWdMoXzPnpseIR7yxPFV/K4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH7PR11MB5886.namprd11.prod.outlook.com (2603:10b6:510:135::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.12; Wed, 9 Nov
 2022 12:39:39 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 12:39:38 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 04/15] ice: fix misuse of
 "link err" with "link status"
Thread-Index: AQHY79AOW0ciUm6PUU6Ue8giymbYMq42kMLw
Date: Wed, 9 Nov 2022 12:39:38 +0000
Message-ID: <BYAPR11MB3367449DDEAF464BE34BBF10FC3E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-5-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-5-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH7PR11MB5886:EE_
x-ms-office365-filtering-correlation-id: cbb306f7-5c13-4db6-f224-08dac24f7773
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wKxCpMAN3bhW+YaPAJLwZJly5vzgotANmDgcSA5SI6NgsL6/b5nTD5pg6rNJyTv2rlgq0iwJGk7u1pXeoFBniy5rpO1cV606sx7dpDxfrgEb8Kqv9YZPO9PrkRNrEVHHO4SJKnK3tHTDKwRVaicU/AAz1MGMqFsZfUaA6P0krfYodi5zPyr3Yzu0cLqzY0F6soMekGwOGiTTcerWGPn3seDdmNEiev5hkJNokXXNcaJpRI/PgYwLOs6j9AfWld62qcLFK3Kg02MQTIeGEHeqgFOXu/N8xylVeRhvaV+v/grejkUy6ZmMJDn1WzK4IXJUIWhJbCQbbS+M7w7oOCIYPw1n4pQPOj9l1yS/fg16tvO6egenrfEZM2UKaUGJDWTKjxigpK6QwrwcEIAGFkrMZcBoPdynG0atXKAOxcgQkW6kEzksBC/EW+8wH57tWwwPGOBEIFT11YDm/x4yhosltzRU0zJJDNvXGvJmTXyyzLHbvMgrTQ7/epESg7cV2LPWLg1l0cyK2ZUApchEwJiKrYlVXUy5mzGiLCG8BA3VLcZ3GOliExsF28Mfpa0LUOtS+DTEa6SaOVSfGTIMbO/+GhKpgOLRzLPO66AwBkK1a6I8tgHVKGDkjuripZwToiF8JYKDXH9V7EEeqYrr4nMU7Yx5ORc4yQP/E36BGsZ0Of3e4D3TUy40wN8OcfDVePP/Ypr0olw7UPSdbWctnyeLJb6Nvj5QETWrs8RR5zAYkzDMGW3QBMpuhTZKbKcMjdzr/GWpTz1ALITKNohDQjKF1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199015)(33656002)(82960400001)(38100700002)(122000001)(55016003)(4744005)(38070700005)(83380400001)(86362001)(9686003)(53546011)(186003)(478600001)(71200400001)(110136005)(316002)(66556008)(66476007)(66446008)(64756008)(66946007)(76116006)(8936002)(52536014)(5660300002)(41300700001)(26005)(6506007)(8676002)(7696005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pO2QCvzwTGs/YvUufAgS3NjpLFyf+h5NZ+wp05ID1kphPG/lR04i44iX68aw?=
 =?us-ascii?Q?u3adCaqTpcEJ3RrW8IBLFO8Ys+gF4GzBSJDhl/lg8wq+oenXHllgCrIPX6ar?=
 =?us-ascii?Q?MuH/Wio004vUPyZ+yrSpA6W+T0DB6kuXURwd8/n+/LVh7Ea0bH4fcYkKlQz8?=
 =?us-ascii?Q?Rop+JgfXy/PaHFHEkAm95nlkGJB7D1SPlw49/zyR2uB+m41B3QY5ws1o25oZ?=
 =?us-ascii?Q?/QgBd6WMXyN2NquG5N0mhETbB8qE109SWJ4qrM7aeM6O4KyVMLHgNWWPwYkx?=
 =?us-ascii?Q?GxvWzFeEdpg76GZxMaumXMLf6kJGNvv31leGVLbt/8K7UbehggwiH6lodpnK?=
 =?us-ascii?Q?vOKq9bFTDh8mbS0O9Lk8JXO0Vr3s62izybBZ55JnCHK2WYV95WTbQFwehAV+?=
 =?us-ascii?Q?t8S79XdYowmWrLA3o53XozRFedXX+SfXXf0TKl8EOawn2hXX7DLYVWaeu9AQ?=
 =?us-ascii?Q?8OAtRt73XysBdJq18oYWFhFSYw98kykYE3fJmGRA0fHQB/YdOHx8R224Ec0Q?=
 =?us-ascii?Q?G6SnmTVYGstyAg7G6EaIFvKwuv6EtSk9KvogxwHIrcTnqYBYhVA5S4MA/0aE?=
 =?us-ascii?Q?crkcKQyDk1vc5x+HPPyMFfxc4VTIfL9g3eqt1NqSyySLexHXG5pCZYLpIPSg?=
 =?us-ascii?Q?nvWLQhHhItPDhw4q3QrvPKnpVGqgboacDmI2sHbXAmABl/OYvgqoM2QVAEkb?=
 =?us-ascii?Q?e684gN9DDwVFLlxB42WEkahAY+D6JnjtjCnc1xmvcpLwbljv4cutHHU4kFVA?=
 =?us-ascii?Q?Yev1EyYU0Xpc1TaCMEAAzyKNVVOe2iNpjnf/tqEUx4St0jesSZfKrlGfK6+6?=
 =?us-ascii?Q?ZPbZq3ypkX1prPkowkjsaMiGoHKo2IdDRAtWi7rNVePrva3xL0b9Dh/r4kyQ?=
 =?us-ascii?Q?kjfrWbbRXzuPPyHmSDSWgBWmPdw6qT+73VFc2iNsBXNvD3J4ja0DfPQnHilL?=
 =?us-ascii?Q?Nbk8IJcHXc80YQFM770pNVfODi6U4/pIqqqnvbDDJxVTpdHD4JOf4xcpzr8n?=
 =?us-ascii?Q?jfsMyS4UiXRSc5K/RM/I4oKyqfGN7Qhdcxya7wXgr8JzuoCfkh/molCrqjA4?=
 =?us-ascii?Q?+3ODCvjWy/8ekGyPxnBAOsMSBltZEcT5oklNO5TLMXJI6ZHndgFbB0WVNNNT?=
 =?us-ascii?Q?e34IbC1lXpZ5uyc+unSrK+mLOzqtcU5vnA0OWxA16RBGUsKBCFyYntbZVG7S?=
 =?us-ascii?Q?YuG333uQcCyNJ0H3qfOHh0pJs7BqIT2jGJBAD7E6qsAx2SGa7F8Ha0EFsbRK?=
 =?us-ascii?Q?B6fNKKd+yWqdz6EQZvlFy/zyCOqeT5AgAnRhvdItFf/zeJwzQuNNREbyH+2C?=
 =?us-ascii?Q?qrbBMJmNecZSxLQ+1XWanoeWmH6IHKWe1dinzJadk9M1RYobXWzU5WYNwFrY?=
 =?us-ascii?Q?dS248tcUvO3kxUA8lkRT+MCxQ0qPYHuacXekVUEqd7iwU9dyX4T0nyDSI4hU?=
 =?us-ascii?Q?SJyDaWFZMew9BRN6a5lGpAwF4wkTRzil8PufaP1EseTU1+29TD80u9dwicDG?=
 =?us-ascii?Q?a65pyznLLvOu3OSParuidqT+wXC6Fwdmlxdg5t6upHATlf9+tZHLC5ypq8ge?=
 =?us-ascii?Q?mc5PgXZT2d4PAPQ6FcuqZEJXR9QBu16bc4h4ZpQA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb306f7-5c13-4db6-f224-08dac24f7773
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 12:39:38.8482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P5Rv5YvaBWgYVPguKy8OzLuzFXUcYJ28F1r3PBn9PN5PsuJuuL65OrddZzDL0/Mjhzl8MEgUHffmUyFLPNSF7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5886
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667997582; x=1699533582;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LvOVjc1G7QrENBBY+UC9dmJp7xZ5FZF9xKK/Q1Ts87w=;
 b=mELJxsBNUrLELaCA/8hnoOKmM1rzbFk1GrenBSwX55I8/7MeVctkZ0pI
 WtoE4GRG3+DhA/1d+XNhA476e5n9x7M0Y5Z9N+iS9P1F4ingOOjW1dnXE
 0U4at5MFeeLIZp2W2wgjDwuK+fjuOtrk9Mmwy3Q6/fql+y3/c1WaA3X3S
 exObtRjFyZcoRqWt+kL48AEjsUmcJQIG1uI8MTWOycPj/gz7STAPWkh1r
 SLHMAsaycNdedQZSk18E5K5UaalnnJbGnZe1HCcHBZngQe1Vr2kPFFi7R
 rSy2RiUugzTNraDJ+s0Sw4uI4tOFtCmMiI8mU5aQEeXpXZdxKre/Wnrib
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mELJxsBN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 04/15] ice: fix misuse of
 "link err" with "link status"
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
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 04/15] ice: fix misuse of "link
> err" with "link status"
> 
> The ice_ptp_link_change function has a comment which mentions "link err"
> when referring to the current link status. We are storing the status of
> whether link is up or down, which is not an error.
> 
> It is appears that this use of err accidentally got included due to an
> overzealous search and replace when removing the ice_status enum and
> local status variable.
> 
> Fix the wording to use the correct term.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
