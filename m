Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0838F693D33
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 05:04:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8F234085A;
	Mon, 13 Feb 2023 04:04:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8F234085A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676261066;
	bh=i6SQvzWmpZDYNp88kmLurDKEiWnbX78zp7UQ0yw9jko=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6jQUSZ//gZBC7tZc2mlddzl1jwlX039g+8lpubetFKO3X8Iw1hibkGt9fGft71Y/O
	 6N1rIBVzvNwZ6+5aTwCb+xNflevoUbzAzhyIVt2414nnKW6C6BGwg34ShkWZ3Y6fzD
	 mDfwcpO1qsjMc0ZLiJ7J91kbXGwBnjP2Bg+n8xrviea2HotLC2bXlEnwFvHd2A+0AU
	 uSTtjuVVzpQQlKHzLfCqXpDH9EALZztvt+Q+TVtIzgEHUhDCls5Zs5xW1V8yPlqjwZ
	 T3d6nmZk3ieGJBrXF8zaxi6Al0FoFVHL+FZiIrafDoW684V3liImMMwceoreQVI/1X
	 VlFWUzwhiAOPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12SVb_jxdcjN; Mon, 13 Feb 2023 04:04:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CCA2406E0;
	Mon, 13 Feb 2023 04:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CCA2406E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 953911BF322
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 04:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7071B81281
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 04:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7071B81281
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xj5wU2TXjiSn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 04:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E8D881279
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E8D881279
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 04:04:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="330810847"
X-IronPort-AV: E=Sophos;i="5.97,291,1669104000"; d="scan'208";a="330810847"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2023 20:04:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="811446997"
X-IronPort-AV: E=Sophos;i="5.97,291,1669104000"; d="scan'208";a="811446997"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 12 Feb 2023 20:03:57 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 12 Feb 2023 20:03:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 12 Feb 2023 20:03:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 12 Feb 2023 20:03:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RI6Ky7d2uZANOC/iNEfIakXIH/wN+evxD3SxIAEMOR7noKdrFhBEKVH1K+1L6aGGxEbZJcBsQc395pLq9bGckTkhPkteBR3azPWzT1/86XXQFC87Wra/5Uyqx+H8Uk4vLA164KItV533IpuhLYu/S2FAbnIHOtESBU4YZxLhIb6H7susF56dHHZW5Cp1vBbG5IsGoajt0rPsi+FTm9NmsSRoHY/8Taf/zBP8kiEgWFTPhU7Onx/3ihfBNzqG5A/PAchaZtXmegbWtriJK5l+GBc+xgnSHd1eoVkLPFosIVXbq3aXaMgLpJy3+yM3nex7Ri6GG4HoATzHK/NQeOeecQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbCMj97FPwUL0okQp8EL53bgzfZrhP8eIse6GL+a7ec=;
 b=Y3Bz+MAuxndQB2u8Xbc2W8arwy8oLvMNWj5FwY7NooByu0RW3jU2FsjYN5ZxsfPMwRitIkRcYxr21cwASd1t7zjfyyEisX+1tpwuLFyuUrpjzsRTXHOJpzWWxGMzbG9vqItjoZbBzEXnBz9rEmDhjnMoK0scTc3yIknzFr1Bm4HXHTpFOW35Rj4DU4khJGlfZhnAETZTc3iUgmMNXbsP6nTtG0JZqlqIkax5Vm40dH4aUVbS6oGztKmhboHhdH02OtOyA2V/AfWfhLjGxmFYu3ASbyrbDYfv35oJGhtRhmh5XhU3Cw2+8H/0TYBpdQb7fzDc2/LR105BOsT80bIMHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5502.namprd11.prod.outlook.com (2603:10b6:5:39e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Mon, 13 Feb
 2023 04:03:50 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6086.024; Mon, 13 Feb 2023
 04:03:50 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Miroslav Lichvar <mlichvar@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] igb: Fix PPS input and output
 using 3rd and 4th SDP
Thread-Index: AQHZNkqzI9GswW1aS0+RJWMg4M89mK7MU5cQ
Date: Mon, 13 Feb 2023 04:03:49 +0000
Message-ID: <BYAPR11MB336765DF5FCE4ACF839FC199FCDD9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230201143643.2624559-1-mlichvar@redhat.com>
In-Reply-To: <20230201143643.2624559-1-mlichvar@redhat.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5502:EE_
x-ms-office365-filtering-correlation-id: 3493dbc4-659a-403d-f225-08db0d774ff2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TdurQbOAMFqL9+0VSzDld2/fnmVwhMTZbpsTgjbZPqBUcT3xvxG9RKPEsXSGNnhcr726MVC6ScHGHGLsETaqOy/cwhkGzGFL1fgV00TI6hdxdNUpYwfVFER6sdxqYF1aMZhSRtza+WWOtKpdkBcV+CVq1bWdH0nC/BTkx1qwBQD2Y4+oTRJEvZ70sC7+ebcFJGQanqttvrlNBHB2N+UyHCPNp0oCUDfMg27E/kmy6O6O7Ud9MMVZ18Y0j7wTofRGlKmsj7VUzzQZxM/FqzZ/lezpgGkksQbm1yLmaTxb+42D9rnLPkoO5Ui31b5rqO/ZCftGSO69GBdXAXtHc5BHU5LOEv1FSgbRj6SaudbZ3m+IJZgJZw2IhZoKmTear/GhUFZYkm1TSiLCVthgocWjttUdr2xQhsaUSHEFDhJFsQVPwVmdg5VbFmJweD9EqGsvLaBuH6wEyK7PTNKl9H5IqAcm3H3zT0nqDNAqUlmvYPVNsY+pfnyJ5T9Isx+iPFt5SMgY4XUjit9eqyoMtj2jbadvx8FkegkppHnj7zn7rVMdFWYySwxBDG69Pt8BePwortx2apiK94UUy0bVVKSd+n4XvlYvt52O+TzbVHlYbJ6zmP9FsL8FSsd3hn/G77zIyYCbyqViGKmte5BwHS4tw02lU5YjGcsNAMYGt0KXKsxQKjLVVmlFpHibFGPMbpFtBoPmjf4KQFKcWDwi5BmCsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(396003)(39860400002)(136003)(376002)(451199018)(110136005)(41300700001)(316002)(76116006)(4326008)(64756008)(52536014)(8676002)(66946007)(66556008)(66476007)(66446008)(38070700005)(55016003)(38100700002)(82960400001)(33656002)(86362001)(122000001)(53546011)(7696005)(71200400001)(9686003)(186003)(26005)(6506007)(2906002)(5660300002)(4744005)(8936002)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/NQVtgaXGDuKF0a0LeZ4cRUToMycJ2xMa11/gHITX5koMD5YrbePAXhb3MWi?=
 =?us-ascii?Q?gXVssyroNINlckPzELy8TakNNiutEKU4mwlcbhrn3KwPGruiN9jXa3m+DP1r?=
 =?us-ascii?Q?rU0+fKLfoKZbZPs1UqAhLEUr4u5fyxVpBUshgRDGrdMNE21FP6eS+bQ5vJH8?=
 =?us-ascii?Q?dMfR2BixU8qfqr3jwuuCFZsnj7JyBuj9XSBkFQKWzy+WuySsjKbysNXdPlSH?=
 =?us-ascii?Q?iwAgtDrUJ4alEXMnBUigqL/I6qVonnDnoMm6AbeF1cM01jL5Kx8P5sfOhf/c?=
 =?us-ascii?Q?xjPV+9DTO7hFBa7LqGpEULIQFlTAZ/6CArhWhSrcZLEmD9UPZqK5ujRcP7LU?=
 =?us-ascii?Q?DU0CpvCX9zN4jDrjNewI8Quyv7Vykwj4eC+uktckrRg7hGVnWOkAfflOHOVz?=
 =?us-ascii?Q?jdB5U0MzMTqYf4MSQxJ0eTOek3Rwg3FjH4YHSMnjGFttP8kb0LIMaVJCxWiu?=
 =?us-ascii?Q?iH+6aDZW0RH8Ps/0ClqrKH42lEfdq5v+cZJt5RAtdlMluVczzP3T7VbMMXzP?=
 =?us-ascii?Q?QzX/OfAPwXKcK07ERNiwLV4qD+7rid8RqfRlDJcza/3zzhFXHEzJPIZ0ilcM?=
 =?us-ascii?Q?vtZBet3and8aa6UMgR2mENJYJz0Bf2jE3NvygFs8baVMlB7Ui2pO4c28IVkb?=
 =?us-ascii?Q?1r+0lzo4jY1XgHp2VHFAy4ZZsIxwYj/8qf1/23a9Z6Ly29zjGeeTU+DSWWyK?=
 =?us-ascii?Q?0JMLT+0GlIFXrFaakVS2IXSB36QQyHmfFwZ1p1l9dy5E39/tEbbdpmDN/M0x?=
 =?us-ascii?Q?8l2PbRXC0wQoVyVwaQKSZrJL/s/ycwjQFHSIRcjmVQ/IShF5DVSN7OuKB9vR?=
 =?us-ascii?Q?Ot5SibsnpJKTvm7Bu7q2keqkfemFRcr0QlaktMxAKtV815dkbi94dJw8yDfL?=
 =?us-ascii?Q?fW50udxEIapvsnoMwbhbN7PweFWdkWtd+1SoMutwHtXHzgmkr8qPxJJxlB0f?=
 =?us-ascii?Q?m26bheX6DleU4NDphNvfJtG+2zV9JEthbneK1rvx6jFo4YDWosf20cjw2Ct0?=
 =?us-ascii?Q?ezPUr8aUnbs3FW50Xthq8O6hxCfLwV4aaxcnA1leF3lcRK4synpxdQ9BUblw?=
 =?us-ascii?Q?16wsZJ0uuyLlgQh3wDwTAEqxKQOnSk/hrRUltCzBzh9770f0YRJg8IoWNGFQ?=
 =?us-ascii?Q?V/DE71T3MUxEXnc+fsigCAX2UneVSHyUugR9055nDkBsWLOPyrusG3t4v2HW?=
 =?us-ascii?Q?nKOe9DsgcUlaVZF15No1Blmi5f2JTYxAIqOGeZS+1YMCJaxD5wHo7Ogdsvks?=
 =?us-ascii?Q?Y+MKkCdGdL6XrSaiLxV7nYXgIYBoVTWDUT5rz0FPebncn+CkW79OGZD811zJ?=
 =?us-ascii?Q?UexUERfNAmWaM8+9w/81uEglUGsRwKZBnVOcw/rWYFjStyKOmVE/3gKUzWGR?=
 =?us-ascii?Q?Hh2xw/sNImqLbDSjAGsJNMYA5rnFo4pn/S7RfZoUSmFDtKSmk6NfROLSzC6P?=
 =?us-ascii?Q?2UArp1Ez8bRwSapus/TdUEGXqS07goal3JORtV73gtNimFk6vjr4c2qk9h94?=
 =?us-ascii?Q?v0H1YjcwmHJGg8JRnT3wiPR++e3WCgr+FYFR8+gH4b5/lIjsUxIh5t9IjWd4?=
 =?us-ascii?Q?j7hQJ4/n+1bsk/hesIMO2D9o3hWqgcCJnqEya1op?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3493dbc4-659a-403d-f225-08db0d774ff2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2023 04:03:49.6335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wGu+C9nXshfn3czxuV+dycbx+eG2DeiNjrJwbnR7rTv5F9/F/mqF0AgTIU31ACG5VoxzdwSaOVE/oZOiFWiFkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676261058; x=1707797058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sadsh0BZu37AYn1EXLV5O4pfx9b38EeKOVzQwtoynfI=;
 b=Kxk4wE/L7FoDwkGATv0bq2vjYiMOeR1A9AnKTINsRqWKPrT0eyGf5+pe
 BCDUKSUAcWM9UydB011djun84bjQqKtwWBjqlqxABeJxApVk/M0whCXsz
 MmO5ZboVogPoe+utoA10tGXqq2dt4hRjoiWvuUZ0/AP7acrCMPWYJiozE
 TUyDYg9ViGse/97R7enA+JNHAiNj7dRy33s0e94dfU/FfS4/tOWm/PO4+
 5UJavoKquov8J4CzVop/pyXkhEiPY3h1NRLySKUrYY2rhDzcmpCCSpiNS
 9Vb/KyDOFzqS/uPhW3o62jbqOi6ffIa76uHHiOzZmMolNoF5aLlN8INCj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kxk4wE/L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] igb: Fix PPS input and
 output using 3rd and 4th SDP
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
Cc: Matt Corallo <ntp-lists@mattcorallo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Miroslav Lichvar
> Sent: Wednesday, February 1, 2023 8:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Matt Corallo <ntp-lists@mattcorallo.com>
> Subject: [Intel-wired-lan] [PATCH net-next] igb: Fix PPS input and output
> using 3rd and 4th SDP
> 
> Fix handling of the tsync interrupt to compare the pin number with
> IGB_N_SDP instead of IGB_N_EXTTS/IGB_N_PEROUT and fix the indexing to
> the perout array.
> 
> Fixes: cf99c1dd7b77 ("igb: move PEROUT and EXTTS isr logic to separate
> functions")
> Reported-by: Matt Corallo <ntp-lists@mattcorallo.com>
> Cc: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Miroslav Lichvar <mlichvar@redhat.com>
> ---
> The fix of PPS output was not tested.
> 
>  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
