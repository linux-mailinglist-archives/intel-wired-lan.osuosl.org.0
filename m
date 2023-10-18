Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF7C7CDA7E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 13:33:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 439DD8244D;
	Wed, 18 Oct 2023 11:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 439DD8244D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697628815;
	bh=s7DFP+1E7o/jmdceWzf+fccGsWgvkCbg8X1r5SgkqQg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k1J5VYXw9gmRknrTHVSLDuaQOLrzq93CLQwwe1IEKPh8rcq4fS079qllE5KnaDciK
	 grRv4lIT+46/1tQAN0oPigmJ6sI/+XTUMkJ8JDK25MN/NPbsXJUrduSiZCuDFWVDug
	 aUAlBnCTyn4mGeKjK8lh0DFRd1CHu67TBW3+mycC2GEALGAYa7kNSMWVJkPIkRwRZI
	 Gu+UoEnLQzm8tN5Luz652yY6GxLTF/n/AfmZFR+DurQxu60JcDbUQytjdliu0FWTRj
	 sMxs+V+hZlUZr4wTsn5wPXLiOrlVyxAs+3x3Vlgg94hvGhFPFOuYRXX5U8GzithOTy
	 JsV/CjpgmKznw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rrj3HW_VRrks; Wed, 18 Oct 2023 11:33:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E83DD82340;
	Wed, 18 Oct 2023 11:33:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E83DD82340
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 350A41BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A3FE40C1C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A3FE40C1C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ai-38HvlRIzh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 11:33:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A515400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A515400F2
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="376365483"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="376365483"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 04:33:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="872996178"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="872996178"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 04:33:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 04:33:24 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 04:33:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 04:33:24 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 04:33:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KJrmGY26Ek4goNlOnMAfW+EPuJG0DTIC8PLacgp3chsebJ8hOxLMpXZsT+3PGWFAB5qGkyxMvuaaIH1wBJbAeqwbzjvyoLgWLYVxCave4qJRegAl5OlwpPCkLdxx0A5DXGLGtBVxKL892QvJbpeFMtaDhyfL4tGW4ypMZRDQPzfnhcXfbvqfZ8TSKecgRgaamQJpBmvYs3nB90ciL78m0SZU4u1D5Yd/ZfTGD+EsMh6mSOOG83kyWYE84+U+6KyAFcBCbfX+KEX7YEroW39Q7fVT4W/2+fh7A+r1PgEEdzW8pNjdvoku/KsEV0ESQ60eTxqG5AMcwYWoqYX+OkP1RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cc0VkAiaAp9YkvSo0iLWrp//knVBV/7PIRasL9f1UBg=;
 b=HkwfTy7NImtabl8XR2rneyAQKffLz+vaq5rIq+aHxEN9Fkc7PFjbWIuIWzNmTWeo9TUn3CZnlWjr4DD65tDHxZ2HwBzRdwCymd/JRG4r3UmTl4cNDQ16ctaIrGMp0yaqdb/bNwTKanHDq8N9HzOVaf8/s81Owy5p1aIwcT/8vt4CagbPdE3Asn9APg+ivylyfjy+uk5N9QSGNscgtRXZQfN9jbmNfSLE1PqIZ6rDhlP964k7o29gcBeVM5RtE7UPheOwPlMLyA+H1dM2h9bymrSYOans4lDvTpuVBeVRFyO1dQzrejU672QY+cp+5IOW/ihljFgFWCGzCOG9I0PfRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 11:33:21 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 11:33:21 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, mschmidt
 <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 5/5] iavf: fix the waiting
 time for initial reset
Thread-Index: AQHZ+xBo5pB5L9uGCEqA4hQFwianU7BC56MAgAyP85A=
Date: Wed, 18 Oct 2023 11:33:21 +0000
Message-ID: <BL0PR11MB3521A03A7244B82D32DC2A168FD5A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-6-mschmidt@redhat.com>
 <MW4PR11MB57769204D0114DD8C71E569DFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB57769204D0114DD8C71E569DFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|BL1PR11MB5445:EE_
x-ms-office365-filtering-correlation-id: a47edd78-d679-4e43-4dd8-08dbcfce082f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YvAXLqlKXomUan54o+yIImhLMQJWHygTIEOMBXpoOy365DKic7wjsQ/joyFXVmcadrT5HHCgJrpl36TGdPi2TAybUAPN8XCQBVhkTy/RSU2wc92b4o/lKN3YBV8d1CvQln22uzMVTj3bd1OhvyE2XdAO3jsn2VDQA7QAkcdi+E9822A9lANlzxhMsDQd4jJ3qlmrVYfUtYRNFwufs3Y8vz9G/qXA3ToGsS0b1iS6X+DZj0AxhO6979SH/5Qakxv+KD8uyQUtezJVTvxINacrwNHk4cKPJcEYC/ZAXQTnjaJageG3YQ+bY4FbisBiFgU/Y4/qEB81qZI0eJVqkPFCCgiFoJdx71ZT2sVHxGb5W4qRfUo9L/DeRTm0GpJhkLChrhi/OfWgGgK6xzSwLAZfsgCBu2BRtIQ/3+ZXuTStuQaZi+d0bBSTVvWnqk8BTqN2lJ6xWWg5Hk56IkNtA6sN9WelcGrC5KLS14yhm6YhMoh/MkXwvMWtDJvHEiKh2pz8ZZFyBdkohmnKsDZNjgI66LfFhBs2pelYGfTsCUfcypqQE+yW9kj6Bo/Oylj/gnOQyj00uL7K87MBVQb37pI8YcLno8ytqx4GeOajfGxAMCM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(86362001)(83380400001)(8936002)(8676002)(110136005)(966005)(71200400001)(66476007)(64756008)(107886003)(66556008)(66946007)(26005)(9686003)(66446008)(54906003)(76116006)(7696005)(38100700002)(478600001)(53546011)(122000001)(52536014)(316002)(38070700005)(5660300002)(82960400001)(4326008)(33656002)(2906002)(41300700001)(6506007)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IYyH14dQc7OOJN7EwCVUoEQMxWgmZGzr7AiA2LFVZUdM4zJqSHscMNnqeU2M?=
 =?us-ascii?Q?r2nbJP9RQJ8tbfZ521kwh8hxBhcT5WxLJyRxrxx07KHHVQw0DhHAcfg7mUuy?=
 =?us-ascii?Q?3md3Prct6QCfBR7Nqms/QP8ah7XsdA2g+xiTg8CmzDxyDuugd/DK8aFLjrY1?=
 =?us-ascii?Q?2GNbFbc9rXw8JwAY0BjL6te11wvktR9+AJKDeT+ibrzW0S0GuF56F1OaYha4?=
 =?us-ascii?Q?zLi1WfA+K7Lv6ggorhG2cJo7MiFy5ynBWORa0JvKHnX3W4UZpuXhGpifn9T+?=
 =?us-ascii?Q?DZSel/WNn5IP2yNIZFrHpxYdfG4+4CfubjbCm4RPbWDfVRwPfvBdYzebW8xX?=
 =?us-ascii?Q?lUj0gHU6OK3xsAJlEP/oWYHACj1IXhJsRKKM7DbFcOKzt7FMQGnmvTyPpIQK?=
 =?us-ascii?Q?9CFMeaAxg1TiC4pmYOrJBhWUKaKXYP0BBw9ArV4yP+wnRJDa94pwoCcdV2vl?=
 =?us-ascii?Q?GKFUPYUUKAzCpISz7F1N8ID3vHKCy2w4s2pGUULFEuUIcp/rJmG3FszFwiZH?=
 =?us-ascii?Q?j4bhBlaXVKa2U6VbBinniVq59iQ4N5zrj7Qr08aLYdMlqH5mhLjhEPH3uKLT?=
 =?us-ascii?Q?iKtg7i3JTEAsdd728NrlZCSKDUedDfhQhR2a12GG5kppyqe/RD3mWdxrmGOF?=
 =?us-ascii?Q?UYWzhk6FjUaKKBuJxiLYOSWlDjPsXM+C2iyr9dUpjt15lF938e7cpT+0GOAF?=
 =?us-ascii?Q?L8ZlQWckd0CLgb7UMxDwP15Kggavp8TPqgc0zV+4OXT7y9XhFopuqoWEPWA5?=
 =?us-ascii?Q?k2iUL9xpg1Lv27scRlgti/X0B7KBRlEl+pMVTN56dnVDgt+YqKbbIbP0MJyz?=
 =?us-ascii?Q?CGX+3GmqjeHjcSA0zqc7qRkLYoiHMN+UN4U7VzLcOa698ZYWkqzaAJ7/3RVM?=
 =?us-ascii?Q?f1eS1+hU1+hkcHT9OD5liI00Ng+pAlugg5a7C9uBz9uxX1Y7l4A3U9yHUxfB?=
 =?us-ascii?Q?bMI2SyDyi11sEaanQhlZBmcwa6Y9MAsrHfFMahAN/0DX4gNSJA9aMqtQWuHU?=
 =?us-ascii?Q?FxiTlMJXoQOWX1YYBBBwr0Acp3vpjLQLtsw5wMWhGJ8IetCTzsUuTC5jtweq?=
 =?us-ascii?Q?Om60RLRgapBEAVH+m8lCFHgrawi1aicQ+URNMDqyosA6hi9dB76tozGddFJ8?=
 =?us-ascii?Q?3a0YatVXPgmIAzpmAYQX/PkVZpzA8TtKgWWmWPmu9uMh0DORjTgrF5kpDQyL?=
 =?us-ascii?Q?ayX/YK6mrhATRLn0l/ouKtacaEfcqSxi8NOmETzPWeI1Z5jxcxhJEA3qFIKU?=
 =?us-ascii?Q?5cVNUK9v/rF+WzBvqeQ8b9Sde5c+guO6Sy9Q4mAf62aGJP2KSe4CdiDHnbLT?=
 =?us-ascii?Q?YF+HR8rm27v+GTs/rQWvSM45kE3ck/hZ4VEfCGhw8iBxKfYVFvPiphQT7Ln7?=
 =?us-ascii?Q?FhN3qJ59Q+gNuQI3Ps/K3gxH3sAbxpEPrUY4V9BWvrbjf99jRzLur4INWQUB?=
 =?us-ascii?Q?+BEn9yklWWTvVCSz4PHiJM3BK5Yuv/5IxYQIeZm0nLhOLd3ete9/ZFBa5hjX?=
 =?us-ascii?Q?frv6JMi+tnLOIZe4V+gmsw1hUogbTa3wspzBqcKfLP4gy6n9Ln7dN74hnqqR?=
 =?us-ascii?Q?8tJmCiZYNltqotVkboFvzzRIodZQlirD2AGUi1jT60OZcVCqJoJjIyedIo4k?=
 =?us-ascii?Q?5Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a47edd78-d679-4e43-4dd8-08dbcfce082f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 11:33:21.0290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DedcJzGhBomLO+PY2Gpt/hAJuJxZYgDffUAbpHUSV+new6zi+wLqXuCQ2ye7+zT909Wg3SjLHvo+btn/BHQYHbNGcqLY4fZE7ZUCnM0Xg8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5445
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697628806; x=1729164806;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yopgz8ggmd9h+P/8qXxM9G5fnlppIO0zLQVp0dT4NVU=;
 b=hjh/msfQXbVK80nVCKZtmae5pvNVXevdhvpJgBEOa3e55FeI14EiMxez
 EQNmvqleHEmo4e/R6N3xQbesJXdTYrC5XDq9CuAPs4I8GCAD8sHD0Zc6v
 uqJudCvXvsXW9EoVT9MnbvWa2gxPtDkLmQ63CqMqS7ugOq7B7XlBWEu6e
 lLupZ7gKqn6bnVaiKawERUBcBHNnGNrPh0rG+XzYebEwIYeUVaGCiUtXM
 hB9UeVN7Il7qECcYoCUgGLYu5Rji5JYISEkJ/pDJ7mGtc1Z30eSSwk1nD
 eBwJKx2Q1pByAJBsTbcaR4ozB5Kwookt+aV/0NfPrk48mIL4uKfySvyIM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hjh/msfQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/5] iavf: fix the waiting
 time for initial reset
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
 Radoslaw Tyl <radoslawx.tyl@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Drewek, Wojciech
> Sent: Tuesday, October 10, 2023 1:43 PM
> To: mschmidt <mschmidt@redhat.com>; intel-wired-lan@lists.osuosl.org
> Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 5/5] iavf: fix the waiting time
> for initial reset
> 
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Michal Schmidt
> > Sent: Tuesday, October 10, 2023 2:25 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> > <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > Subject: [Intel-wired-lan] [PATCH net-next 5/5] iavf: fix the waiting
> > time for initial reset
> >
> > Every time I create VFs on ice, I receive at least one "Device is
> > still in reset (-16), retrying" message per VF. It recovers fine, but
> > typical usecases should not trigger scary-looking messages.
> >
> > The waiting for reset is too short. It makes no sense to check every
> > 10 microseconds. Typical reset waiting times are at least tens of
> > milliseconds and can be several seconds. I suspect the polling
> > interval was meant to be 10 milliseconds all along.
> >
> > IAVF_RESET_WAIT_COMPLETE_COUNT is defined as 2000, so the total
> > waiting time could be over 20 seconds. I have seen resets take 5
> > seconds (with
> > 128 VFs on ice).
> >
> > The added benefit of not triggering the "Device is still in reset"
> > path is that we avoid going through the __IAVF_INIT_FAILED state,
> > which would take a full second before retrying.
> >
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> > ---
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 2ab08b015b85..f35d74566faa 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > @@ -4791,7 +4791,7 @@ static int iavf_check_reset_complete(struct
> > iavf_hw *hw)
> >  		if ((rstat == VIRTCHNL_VFR_VFACTIVE) ||
> >  		    (rstat == VIRTCHNL_VFR_COMPLETED))
> >  			return 0;
> > -		usleep_range(10, 20);
> > +		msleep(IAVF_RESET_WAIT_MS);
> >  	}
> >  	return -EBUSY;
> >  }
> > --
> > 2.41.0
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
