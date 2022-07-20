Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904C657BD8B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 20:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1A3C408E5;
	Wed, 20 Jul 2022 18:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1A3C408E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658340979;
	bh=r9Kdhn7oiTlabQh0atc3Uaf/k3lkjf/EccG4JdsK0V8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dvg+4oOvNngo1+sBjhAg6cDM8vVGbgxZV1gudsNU2G65Igq3NYhIXDQR70ptFwQ3H
	 ljQuD+B3iREn1+nSlW5wWFifDzh8Vm2k+pmpX/ZAnNzfkunrV0AAi/v9SABfsBlKtU
	 lKgUDZz1jD5dAqblG4wOSub3cxnJPc83vvV0OIyPgDjyi+OWDL+frB3S7agLX52VHA
	 DuvchWupiqUgdJrBCJH6/r+hjpdx+99tS3ahap+yR+jjw+51APNmejUFwl5bO4UcFx
	 I9CMLJjhTBY+YdceXa9YN5jJIWTP+sKkcf4l03qOO/u8Znx1rMW8/VrZsj+bBYOPyI
	 Lj9f1SZ9EqZOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2qP7aab1dqxq; Wed, 20 Jul 2022 18:16:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C9F640157;
	Wed, 20 Jul 2022 18:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C9F640157
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 607AA1BF860
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 18:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37E8140320
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 18:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37E8140320
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ddaNB0Wj9Sc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 18:16:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CD7E40232
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CD7E40232
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 18:16:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="286860292"
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="286860292"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 11:15:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="925330538"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 20 Jul 2022 11:15:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 11:15:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 11:15:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 11:15:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DblSWBzZwzXheI2jstxbieJLLe6erTvSM/UJSoo1LYCPRXe0fb9Rw3VQJey5R+WGyoaWVCTw5eOGE9lYTa/JbjY1gvsKoj5QXNPvjMYJEmg3zcSuYpT1kpIfNFX4xwML0OtnQeCAJuj8oIc9w8ieqBQzoN85uGa3sF+9BjnsKM3pfohsAmOZ5O9Sy9h05/ThWGb70Eq+4EYchf8oo95FJAN+tmjWHrHpj4bYvH9z5l4cN+N60RTWIOhWaijzfNtmnwJqx8DPx+v4VtEnfgK+4p67h1LJW16SXlBEoRqswmBDcIKrTndBB9ycSicJilZWE+hqbmzhCcvItFa7AEwIfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8rTHgDPiSyf2tNZAsEQDF7Mbz6fuT16u+PM7dnIJhM0=;
 b=eIKWvfS6GN12RUbwXcyzifzs8qUwMrmY/51WTBnoKodcwy3T+F+xFdU06qjvhRGXIbQui+sAkuMASBGx73JJSOfZsaia7eF9G81vivzieb5hqG5d+TD+Q9vIrLOhtHhINi5/VnUg7ioNcPcly7bnlGrkCuhPOdB27XymRHcxkRAq4HjSEaVTKePYwhxsyepO63yASp+00c+6NpqkCcmM0ZJ+CzMuaMzFkb6y7R0GpgTgRCxMJX5PrA2OrYRIn62+rTdBQsboaolvnKsSN5QaQhqE0BM6eWXKaPuH6tVPG98dpPY53jo+raC14xRmxG+lmZzLHbsTNVEcKfuzfHCTMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by BN8PR11MB3699.namprd11.prod.outlook.com (2603:10b6:408:83::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 20 Jul
 2022 18:15:39 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::20e2:ae32:1f45:7e3a]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::20e2:ae32:1f45:7e3a%3]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 18:15:39 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Michal Maloszewski <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix interface init with
 MSI interrupts (no MSI-X)
Thread-Index: AQHYbHS/tBuXPD41c0GWX3Uc1Ov/xK2GlUGw
Date: Wed, 20 Jul 2022 18:15:39 +0000
Message-ID: <SN6PR11MB3518EFCA4F4341BA543B1EC1EB8E9@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <20220520180703.680212-1-michal.maloszewski@intel.com>
In-Reply-To: <20220520180703.680212-1-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 199508ef-b6d7-4379-86db-08da6a7bda03
x-ms-traffictypediagnostic: BN8PR11MB3699:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YqtkOu6+qBtBPGhE3APApDTGC4LO9JZR7uJ1nLv683tZEcWbOxUVsbUkldSIgRYF3iElrO/uPSxqv9LWSdJQyfPYmIW0Jy5kPrb+TlEcU7uhatSW99GRKUChl+OF0YhuHA42YcgXTG1WYAOzpf9sdCh5zi3YZOP/zIjJ4K78Kguq9RLXwLAh0UY2UvQ9xx9OF2UvYqL994HaLefbXLmCdM+GziygZqqgUHu70PgZZlk+qp6WfRW22xKVl4lwSq/XZbVW+jR/hluv/IiWAvP8hei2/TCoqUt3u8/Xy/SlJUO9efl7RzMtM7aLy/XpTTGM67X5S2Wa3MFLh/DobYxsAsQ1oKAxtoPC40G8l7SJZfvB+WPqS6wByiSvISunLnHDwUQeWA1WcKnqNPyHhLFHYTWFprublKyVt+irFDye7Di06ihZPwcWmbJXHzhFSdDaUhPprur9JuZ4D4XDCacmRHJZfvSIjq+a1R/XY/rmIUxVEs/q73rGPZ5eZRv3TDSPX/N7AIP2r6N8vv2VKubdS7hVx3//8EI+SGts21dIeIq7LfAZKgP3k9AApvYQWlDoO2JGCkXSn7Uezpjqd3tmg/MIl3Xs0bGtl76lYsbjeHbWGCRQHrC2Y0qYaOX+q3fPDnxXAbKev2IJbEQsx4/wzWREI5hzZW3zY+GrbJDH12sq1/kLRQT8EfdWvx+bvvf1+FfLTtmuCoCRW9vidOlmJ0NaYbiWCLWTmwrYYi90RVut1uklvLV6OMVKu8zF7xYXCcZhyirC4Quf3QTJKivvZVJocB0bGYBAhJT3gGLTDlfDvwBC8MBt3JPJHfZjATMT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(396003)(136003)(376002)(39860400002)(71200400001)(41300700001)(2906002)(52536014)(38070700005)(86362001)(478600001)(8936002)(5660300002)(4744005)(122000001)(38100700002)(186003)(110136005)(33656002)(107886003)(316002)(54906003)(82960400001)(26005)(66446008)(76116006)(66476007)(6506007)(66556008)(66946007)(83380400001)(4326008)(8676002)(7696005)(64756008)(55016003)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ib1PtYHyXL1jtx+2h4KzE7qJGHJGTLnkpoIUiaAR/XNi91PwOIOfbIJhjPyZ?=
 =?us-ascii?Q?Kv1OXrf+LAc5NXxjG325mXoMiRNA9aL1RktrBBr5V/zqxvjW4IQmX/VfUKnY?=
 =?us-ascii?Q?9wiuKmMIsnZrPvvl5ZXqwlS/pL8JyrzfCNLngFtasHhc/vBxKFN/FIRGKO0D?=
 =?us-ascii?Q?B/BQr+wozNLf7VAz7XyMgC9f5jg7b0Foyv6CliBsQlqR/5rckC8fiQE8qNH9?=
 =?us-ascii?Q?+njs5GedrNCRLc9h3mee7J07vsd7kFkuwlX+MoOgRPtaHFBBHpNfJu0F1h9G?=
 =?us-ascii?Q?rluKKDcs3sUDwuv+VvOlvZ23E/+Ec6GlJacWa2rOxs6iveJLYB/fN2pUzjlJ?=
 =?us-ascii?Q?XkjvizJnsOSh4z9QjVWpC0+a9L369+vfkSOXpbu/jTabT/bRb2paH7XQVReF?=
 =?us-ascii?Q?N4vGVeFebUrVAAeYbtWR0h/aOw6KHV7KNtWaZu7i8OaCeP4C44GvsdYZ+xJb?=
 =?us-ascii?Q?tIIFYbqLj6K7dAFzRLgpeBNOEutAcBlboAx+L/VMj1dRm7LWc3FUgSYO0z2/?=
 =?us-ascii?Q?EKfw4VnYHEgf1AVbQbDDUgWPQkl/PdpLndEoXtiTaAdBC0J0QpnEaYmyj9i+?=
 =?us-ascii?Q?nygYyGm2EwYwabEQXr6ArNKGVvCR3IRSdRpSHf/cWrmU7ixgYwPF1qk4Hywy?=
 =?us-ascii?Q?aS9ZJNPFjz6LDGnzTRdgyZ9Brxz/Y1Djh5QZqsD7RV0MgD8XpFb3PcCTqs5b?=
 =?us-ascii?Q?KEfGmfU0kT+L21S0SmeLw0G7md+2lY3kruqW/f4rjKV/WIy3RlaIlFfvtpuh?=
 =?us-ascii?Q?eMQ5Ggfpx1PMib3cw7NQu2oV5mv7PY+93sPR4ArtviZ+HQtqdYiic9d3wstu?=
 =?us-ascii?Q?vlAJABXSHG5cjqgvbzT371cPvmgd1e50J/r1C9x39VM22iSlkD+NG0SpoE9X?=
 =?us-ascii?Q?/zqYxXG6kEwcDuoV8tqivNxBa9iwxsN6xI7Y8IGeThZoa7n+rrhuHqg/jf4F?=
 =?us-ascii?Q?e7rUf8NRA9LQUllCkQc0YnxKQE9TkJY4vfoLp9sbLSjWejqZxnb3kO2RTEtP?=
 =?us-ascii?Q?IgqNHPhA0GRM02U+xqw/Li7PMhql+sBSziXnCeemE93iK6RkPvnOxW/7x2Z0?=
 =?us-ascii?Q?8tQwblXo2joa4NpbSV2DVW8FfW+BLxbgEG2uY/2c1O3OtBaqvNKgJb97bFOe?=
 =?us-ascii?Q?uklWXWYMpGv298SS2/duHO2hAyeVIiPG8h8NtkrGFscF3eBmFt0yKpwlSMlo?=
 =?us-ascii?Q?ebWlFVFvbN5HUeS5dNQw0iIFueFxIWkQcSPN2dBOsZIDcb/mPxd7Fv4G4bvq?=
 =?us-ascii?Q?ErnRRf4V1HpYMzH9eVh76611RLHXxQ3OuEYXfXTM3tDqr761FY6C6iql1Yhz?=
 =?us-ascii?Q?55xBTMMYijZleWS08YfOxgtQD4EfpHMYW4RZlSy8ic2zAu3F2Cu1rOg1ceRf?=
 =?us-ascii?Q?vDSt5ER/I1YTw75OZ3wNJXhylnHdpbi+/BAkFxeUbKp9mX6+ZVh1ccR1g3Nc?=
 =?us-ascii?Q?QF3BQkTsIB/dJl+sX8NmnfOhLuusAYh8U/t2wSIjVOvm61N7SmruKN9e90TC?=
 =?us-ascii?Q?952axYWLZEGwDo4aVa/FJ5i11fc/5EkzaSxuGzTs8B3unQhdgcwX5IyH94Ld?=
 =?us-ascii?Q?gtRv7Z5ooHFpMbiXAXk6I+r/sb+h0U6lvAXF5O2a?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 199508ef-b6d7-4379-86db-08da6a7bda03
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 18:15:39.6907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HkCTUda20H073oRMuy9T9EDaoAge26YXQjVPAiA/nfoG8dty4jlnPUGHGuSUuTR5DQ5p9oibASunPWiDrJT4+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3699
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658340971; x=1689876971;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8rTHgDPiSyf2tNZAsEQDF7Mbz6fuT16u+PM7dnIJhM0=;
 b=LY5wv2NcWS8+rECOYUCpiOEEtzE7Vggv5r6q/8Mp1PgJryir3EMUo3bJ
 sd/ywFujr+38A5lBr2QmBM9XtcJNCiuojxet6fycHCYNBSZNgO//GRccg
 8FrznhMO2WiYSXz9Nvy41ftMy+nuPDb7XKA8aOoF/d+RdqAxxo3ziCslM
 fEg7B328AHLH00xyEQySSDm6yLZe5AbUkmo/lD6tm7nI0Jjyz02WH6tbu
 ECH4MP2Ep1Obo+TPvhKnwPuatiUUdG2nSt8OWOTxkYDh1uoOHu6YsFsOD
 iLjfxhy1wzazgvwswujj6N9Kd8LbIXPceM/BWZDdVTNH82x8T3S8iFXOd
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LY5wv2Nc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix interface init with
 MSI interrupts (no MSI-X)
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
Cc: "Maloszewski, Michal" <michal.maloszewski@intel.com>, "Lukwinski,
 Dawid" <dawid.lukwinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Maloszewski
>Sent: Friday, May 20, 2022 11:07 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Maloszewski, Michal <michal.maloszewski@intel.com>; Lukwinski, Dawid
><dawid.lukwinski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix interface init with MSI
>interrupts (no MSI-X)
>
>Fix the inability to bring an interface up on a setup with only MSI interrupts
>enabled (no MSI-X).
>Solution is to add a default number of QPs = 1. This is enough, since without
>MSI-X support driver enables only a basic feature set.
>
>Fixes: bc6d33c8d93f ("i40e: Fix the number of queues available to be mapped
>for use")
>Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
>Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
>---
>v2: Moving the comment in right place
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++++
> 1 file changed, 4 insertions(+)
Tested-by: Dave Switzer <david.switzer@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
