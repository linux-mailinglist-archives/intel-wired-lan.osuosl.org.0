Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07441580AD6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 07:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F6F681801;
	Tue, 26 Jul 2022 05:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F6F681801
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658813609;
	bh=dz/JoFlC2zlHexGVWNDaGtYMX7uWwd6lS30RCK95boo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qnzleJXhmS6pMLUXxoDL10HW9Ajpu9obj448t7EQj6hDGb01zfLwrO8c13OyTI5bX
	 11a1/a160fHXxidat288TEfEIYZ1V+aB0ffSpUXgbcdxa8xaKZNrfnn/dcxYnTWofa
	 m/dLoCnhti7mjKf00nvzbGYu2QxYyiS7NhhXoKYYx5MlcRza4f5aZZUVXErWfhA8+U
	 mWOYgOawV/dLKlNV36WdLODgEmTsiSDSOMQdk3hlidqTb/OYM0BcBU/+fCOYeBdpGU
	 VEYmKNvEbvNCHPbRFAO8XzPxAWC/zbeGQAqgkjG56fp+IKa7Bw43Plob5tdgUJeE8t
	 lOh66CJ7ZLalQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hkAuOtppnNTf; Tue, 26 Jul 2022 05:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2324581417;
	Tue, 26 Jul 2022 05:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2324581417
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C0791BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C0AE40993
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C0AE40993
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l71cXHVv4pGU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 05:33:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF74D40951
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF74D40951
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 05:33:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="351858308"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="351858308"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 22:33:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="927193511"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jul 2022 22:33:20 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 22:33:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 25 Jul 2022 22:33:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 25 Jul 2022 22:33:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKTXeyel0WNnT0n4uiIDacJjUxNHEtXdpX65Dryz0/H3uRqIWHr/dW+dgf8k1aOhPCQqcMw+PbdnRZk+K+rmNhk0fp2RpsujUT8A57/7BHZmIGmoa/GcnpxDU4ivIJ7tRLMiAehkIXUWn3Ox/xM4FWfwDthGs2m1QilGqbMU/aJ3c+v6FcGtwPOaC/+yBcvhMYk4pKMwjgIEPuA6T0BcJgQqhycCwiKkiPfXz4gwjCA7IUX2Bu2B8bu0OabqJATZwtwWBH7vOqjYnZ0R8/W3Da9sWSZVItQcqQga9RDzEuSJ7QFLZCUOu+nstRayn1ffRL5VibQYRyC+kkXDYuVIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VvMjIhy0cbJZmRCCZzZ7BI2as3cC5GhdAOJEpxPoLdw=;
 b=Ox6wb/0Qei7mwUEcjqYJDUmTt0MWWcoLX8WJIyOzEsd8SSEtiAxmgf3ixpWUgRqr65V6AOBaNjypQiZPFpIGOnFhATOzVE1PN/Rok+AYHp9DUDA+W9gSxACBbY04ODcBPV5MrO0HjJ7gmQeRdk3FpAa8AOiP/hiHbV/XssXdUNRhd0lt7cffBWyNIQz98miWZQPS2J4SuFyyKXpV82PvdN/dP6o0tZp45rwWLd1M1WPnKo45Yr7gimSYOJNdpyk6E2x2AZ3eh3/MzRUw15xyCiJ1OomSLC2q27yh3ULgjFmMhioG4hQWhYkynQilFun7FzB/7ff2Uh81kgbFhdmJXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB6693.namprd11.prod.outlook.com (2603:10b6:a03:44b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 05:33:19 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.024; Tue, 26 Jul 2022
 05:33:19 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
 when entering promisc mode
Thread-Index: AQHYkgPqw/Gv/Obn+kiLy8ujz+5ZrK2QO+ag
Date: Tue, 26 Jul 2022 05:33:19 +0000
Message-ID: <BYAPR11MB3367E7DA6E06013CAC612C91FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
 <1657199751-256188-2-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1657199751-256188-2-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d8f36c5-2553-40da-21c1-08da6ec858f4
x-ms-traffictypediagnostic: SJ0PR11MB6693:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qU5FUhAhz+3mFstR0doy/hWQAy/V5UJvhKUpXmgG2/J+C+FJBplzQL08rvzJ4Qggk0ixU4ElVEUvGWXKtuLhZzQQmLQbXdcMk5hhS5GdqhA3uj+7JrvBk1xv96GD6aI0drcUnfviuu0yslKWC2txRfh2xq1YfpgwLBYmtzwaT6TshjRGqrfu48SCd63UaSvHiqwXoDLO7/nK+zmSTfxltbL6N2RNowBNt6xizeVE9Ye6TyN12/05HND0xsz5q/EZ8zCRt0gvksKIpY5yG8GUCe+IzSDNBmJF9jklEHs2tl2lxP4MeiOgA9Cu8dp1eKtXT3TYh2F6j5sv56AejI+cExdl26tvyH3rSFALsGuiZON+CKPKnsCQsgvnn4z20mTq1wQ6rhaD3glOoW200kwCiZVAV03psbRyXswiI3JZGGyorEHQ/9XMY766/vEMIG/rPeIH13wVRxCMyJ87ZAPPmqrC+Dt9A8wE1CcikIG6GwfMIwOfc6yE5AseTtICkDNPWeueh1HT5HbbeARB07qZQ35SAvAJlT132Wtfo9hxh9AJAkWWYfqfFZwS4ELYzgbTh5iBt1W1A5Y4e7EFUpRKdulruJmzB0RLy8qrE69I0EZYiZUsdWrViaEKXWICiFbS8mWA9bAtOO6AktqTE7yjI12Amusvw01YU304yVlS/GwzUsti39nEoKbn2uIATAl2d7bTjfPYlnqw/xZE6IYqIfJhaiv7zs3NOCCDBof4R2sKI5jB4kL7YGx1OaGv48rVtXHwyNQzuTdcYdEqertAr5+086pFUCM240Rvu5sj5wNNDEigSMaGmjmMlS6KTdgzm5BcCNXWc92unB6BSuPVnQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(346002)(39860400002)(366004)(136003)(376002)(186003)(107886003)(83380400001)(66446008)(64756008)(76116006)(4326008)(8676002)(71200400001)(66946007)(66556008)(66476007)(110136005)(9686003)(41300700001)(6506007)(53546011)(55016003)(26005)(2906002)(7696005)(33656002)(38070700005)(86362001)(38100700002)(122000001)(5660300002)(8936002)(316002)(966005)(52536014)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ew2FUEPx7aK3xH6MtAjhD99mheAC5+rtuvJ+hyJagFWsrmfaYejPB+Ut+yFz?=
 =?us-ascii?Q?PZ6DkXudTP1FfYgwTpEwJSjBrSkvb/LjaALNIj5nzLaQpQvxk2T+y0T5Vky3?=
 =?us-ascii?Q?7ToUcjK8djvVf8COYipffrk2Te0o/UlKR4rzuaYgVzmlIKSnbYO5x/1hrRZK?=
 =?us-ascii?Q?T/J7PcAJIfFaYJHDCUZg0xe2I7HEIGe+g9P9xsMAXzfaC+zoK+7uT7CFtttT?=
 =?us-ascii?Q?HEIZFaaH2UAy6EhwtMdpJTrcs8Uz8zHcdHY0HVREePEZtDzZen7Ibxkadi3e?=
 =?us-ascii?Q?0VFd7Z6u9H2oZ7NPylQK7mikfpt2/4SiLD7SXessT9b6kJxtZXz+sQ5yff61?=
 =?us-ascii?Q?6KKYnIUKjwCBw8NPLZ8UQiS4JEgI4oyMsXkLL1Odv7uJFkTruSFQ8C1lAdTJ?=
 =?us-ascii?Q?cHXC1kksemqriAnET7/Bi8v0JOAPFAWmqr8sIEqJiUEUl9D3OsjOv+jnYoeT?=
 =?us-ascii?Q?5cKUMnO7mnIzVfihF9jVcqFKnT75ZTFh0SxYqvqVwkzHSrlEOEKWTqD1vYV0?=
 =?us-ascii?Q?9lOJEh4/EjOp8nDwrrgGMVsV2J+pMwmikh2Q9qV9dLLVrEiAu62f4NcLRfPi?=
 =?us-ascii?Q?UuMH+Qze8nDbocgcBSOMRl9Vpg4PbefI6lB5axWCjsgyYPN6ZH9Xy/EWs0vc?=
 =?us-ascii?Q?Xipo6VMGl78ZgicsPmQ0aXkP3vMjMc0hW0uocbzv11v0DyquKDBRJics2eGl?=
 =?us-ascii?Q?bDH+4MdChE8UvDsFlLRJ5wAArq9bDOJDwJ9sk/oRuOdekVtQPBH7o5tpc1h2?=
 =?us-ascii?Q?sm131j7woMfBq8oFEzfticH9NESsS3zGWAoDP0GKhT4XhNKfPm56a+AoFcGC?=
 =?us-ascii?Q?qEq+ZdJkIhUUqLWSVpI1KpmrxM8J/5ZO1RBIQmlN/DtDOfg0lybJYb0hyURw?=
 =?us-ascii?Q?sDVPb3RFLL0qQkb3L+hIkd3J1MaHcxYF1kkI4ERp4f2f771Qk/R/o62XnfVf?=
 =?us-ascii?Q?9HGSfrxfabsNNIYMpbjIQe/+SyjqXoXFWKsFZ3jdRm81dxy2wxTupZPWsFxp?=
 =?us-ascii?Q?vNjYxq9TPECF7mwScWOemDm8DkSmKZ55MWTvTc9hJeL5vui/1kj7/Q2x39c5?=
 =?us-ascii?Q?tYEHgOlIqwDJQJizIyOwv4Jic9bKF45wBNpPMTbsyVsHDc1G2MhYcfj1vtVV?=
 =?us-ascii?Q?TnXXzp3j72a2Ul3SaCNUKbCL3WY/ON/NEjl9x+of6oR4t0o2nXlmT4CREQsA?=
 =?us-ascii?Q?YIpzS+qd3rlf5D8HwjM5uBme//gaInxVxUHqX9vlB57Ptzu7k0Xg0dhueNhF?=
 =?us-ascii?Q?rvbvrbcTTJnwz1tQkybVbXRRqyIIq9jC6lE/AzI296/+GjbS5veztEWry6Vo?=
 =?us-ascii?Q?Iar+oRXSu81qo1Fv4puZ8ghBq/oXgTYosgUmZKYmE1vFWXVVGSCG8Z1mXbZr?=
 =?us-ascii?Q?jVt/s3SU+rrUAWcz//SheQydVMB+o/58cMiDhbFrVeJ9xt7ahCgrczWF5DYK?=
 =?us-ascii?Q?BxvRV3Ms9RZW+e6MWx4AE9w3nSYGShI3uw1xdOmkyNfYlhlczqZ0z2NzPU1g?=
 =?us-ascii?Q?M81twllBX73gBEWFUf/xgMoZxGXrURPdVZHN5uF5LM2G1shJeL0g7csdEA2Q?=
 =?us-ascii?Q?1g443HF962Ft/S5QlQVemvbAIkhgTZvTviVdJ5T1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d8f36c5-2553-40da-21c1-08da6ec858f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 05:33:19.1099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aACEe4MSfCmdq+P1iM2skjV8ij94savUMMJeWYJ+R424/phcOg8KfKID3GWb7fG6wA8Wu4U7+ACAZLQI1srsQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6693
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658813601; x=1690349601;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g/BfeRtShrhmf3CLXlFra7ilr+qzQHK864zd0X0pfx8=;
 b=Q6bgRVmJTd4t63SjJoV+Hhwi2yVOZM1djLdBMp/Q5xJgxV+Kp47EOJRE
 eRssXR2ti7PphglQEPxroiVwwcaTR9be/Sxyo2AApmCbeax+1KwMMY5XU
 ZgIMeYTxW+c2O9Ypu1rAT80L7Jv8RnOYHNZVTUHvmJV535wepKnQU6Irp
 yiRlbTSLMXlWGsL18laRin01XQ1aUqdarbzl6jBkgvMn5gRKirNVF5pjv
 9YFteHRlWy26PbV2JZuvnItDO4rbr8BWWYbIXRz2k5HgWZZRhJLaLRGme
 yN7z7DziQmHGSkaZdfQQAJHerJKUZApuogBZiApolhVe35NjSlh8Gbxft
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q6bgRVmJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
 when entering promisc mode
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Thursday, July 7, 2022 6:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
> when entering promisc mode
> 
> Avoid enabling or disabling vlan 0 when trying to set promiscuous vlan mode
> if double vlan mode is enabled. This fix is needed because the driver tries to
> add the vlan 0 filter twice (once for inner and once for outer) when double
> VLAN mode is enabled. The filter program is rejected by the firmware when
> double vlan is enabled, because the promiscuous filter only needs to be set
> once.
> 
> This issue was missed in the initial implementation of double vlan mode.
> 
> Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Tested-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Tested-by: Igor Raits <igor@gooddata.com>
> Link:
> https://lore.kernel.org/all/CAK8fFZ7m-
> KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

I could still observe the issue when the ice driver has been removed from the system once after executing
creating bridge over bond and then double vlan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
