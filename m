Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5712DBFA281
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 08:07:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C854183C32;
	Wed, 22 Oct 2025 06:07:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 412QwDKD8iBL; Wed, 22 Oct 2025 06:07:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 266D283C35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761113222;
	bh=jHyESZXWughbNUiJvEepJrM8sQ9LX71Ldwuqw+1UA6w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ULQIERJlXvX51P5I8jMlYhhldApBOHmmYPCUWo2DDYJByHOlpb4/lVzNLsz3BjgQ9
	 rg9mAWbp6ON+B6t4PvbVEdKxNC2UyZzABbIh8pXzgWRyKBzlIpca2vQzautCig8AzC
	 pSMvLVBEBOAa5o3FpGdOjl8Zq1h3qYf6zaGerTLsUhvGOm6rK3oxfyP3ThErNRfekg
	 jErRZR5HpeRL7ArjgEpCHXEwzF7TrouGbeZjwNsaoHgs6CRBjSTeLF0scA6UPUhvII
	 6xHhmlltUv++XukyV/Z2GEOvI98gtuR+C8mx7L8aiRK1Pdzp25EmfNaemIluGtdHl2
	 uxptQsTnP4Nkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 266D283C35;
	Wed, 22 Oct 2025 06:07:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4298D43F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 289EA40EC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OrXkKuLBD12i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 06:06:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5479D4073D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5479D4073D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5479D4073D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 06:06:59 +0000 (UTC)
X-CSE-ConnectionGUID: MXKFUf7bTg+vNTuQnY4onA==
X-CSE-MsgGUID: 4Yw2wYHrT5ijqUHN48OSUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="88718994"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="88718994"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 23:06:59 -0700
X-CSE-ConnectionGUID: CvHivwJGT86Q1N7K6y2BoA==
X-CSE-MsgGUID: dS5zQq+qT3iHLXV9Ba7jGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="182991175"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 23:06:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 23:06:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 21 Oct 2025 23:06:58 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 23:06:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g5N3Zz0BHtUpiHh5idTbkaWng8rBq4GWJ/SARRONrWMJG2O5pcP8+Md1VCe2qWzekWM1bI6b18nD7cyjWrelLznDighfNG8AjQLGoDIskQYkOY6QWByJM+L8XK3aD8V+gLtR0q7Ot7rJUEmpNVoMkzdL84IQfKTLYBo3w+pJtJG+lWVJQI1iMM/ZvZs9Fle1VTh3lfr7DzCA7aCi/lgnuB655SNbmvq2IuGfLGPyKAjDjkziIh6FVan0sru2HKFj26tfSfBIN3LjGav7v2l6sMZI37u0Ls3Sic/mXVWesUbVXgHIFqvXY8/8hL8xnVZJJaP7Z15jWqYq0D6xev1NrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jHyESZXWughbNUiJvEepJrM8sQ9LX71Ldwuqw+1UA6w=;
 b=GFEZ89Qys+67O/qUEEmuG8u6kdhOkfwUVUA2tYhBPuQQd5vmSD4LrkCeJ17m7dDrcJ5uW9OkjtjK+wB00W0QivIXhSyeU/31MtO/+k9NXzt5+9wn+VDG5Nac1w2wWDaVMgIlDSC8eZCmcCzCA42DszCGATrHuBGp69bHC4oRCdiRt6QBQxrI4oUxaEF1F3W99xKwy+yMUgSVPZcqdRZpUhMBcGiYnSpxSym/+oeQJcqUyPs+V4LTevsgL+57Nr/F4fpv4aOSNS+yv+BdQsoIarZ5Z87fZCdejAB1sM8jqBttQbLSDfK4JB1eDlxhHPjQ2+/HtXsK9kkk8poCcRpXPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 06:06:53 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9228.015; Wed, 22 Oct 2025
 06:06:53 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Robert Malz <robert.malz@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH] i40e: avoid redundant VF link state updates
Thread-Index: AQHcQqGndulDEV0ELkCAQN1znOi4GbTNrdWw
Date: Wed, 22 Oct 2025 06:06:53 +0000
Message-ID: <IA3PR11MB89864614194F3AC49E1910F5E5F3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251021154439.180838-1-robert.malz@canonical.com>
In-Reply-To: <20251021154439.180838-1-robert.malz@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL3PR11MB6409:EE_
x-ms-office365-filtering-correlation-id: f0a34dcd-a1c5-4767-1fb6-08de113132ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gxWCwSqBa7Exfz1rRb7LmGcbM2sx2GbHPushP0aFZfgOD4QuUFu2bbkApA46?=
 =?us-ascii?Q?BecdEdLR1RYJLGCN0LUD/iBIrtuMOd0wRDNEakiDPWIXDcAjfJDdPfqyJPiW?=
 =?us-ascii?Q?DHj6JJBtW+lh1HwMWnQ0anny+PR6bX0sUUpZO+RWC/iq0m2QfkageqYaO9yY?=
 =?us-ascii?Q?d0Uk7yvS61X63wpz1RGyWZXoXSFz28xhPmQdcP+wJy2Tdxv3tlReMnx6qnXB?=
 =?us-ascii?Q?YaA3GKE/osaSzgpbXKWCSSo+4O+GONNJxE1jTDzIDbdRhvtD7RPPSGtTJh/N?=
 =?us-ascii?Q?8ojQfIlKygnHWni5O27w3AsQX4gHI40ebKer5BM11dGn3IfSEpPLSZ9eqvIc?=
 =?us-ascii?Q?fxWhDGg3WEB9LyDr42y6XgnumLh73n9mqCpeb2PewgJq46E5cKQTtafouT/u?=
 =?us-ascii?Q?am8bW4Pk3rBd6p2n9zRcVBQBi2V6hpw66r8mRvDTEMTwZ8pZHOnAj2gvFy7c?=
 =?us-ascii?Q?AvuNeW06zgREP04uqdP+c/MA0DaV0ewD4dUdqRaWWyCRM6ov0HnWqGwqdPZQ?=
 =?us-ascii?Q?Yi0OIhx51ZxXVmWd+KS/Vh62Td40tZSsMPrGacjjr8vMY4z40zRD4eQE+jIx?=
 =?us-ascii?Q?PQOCW6JiBi3yi52GKdAtR4nkDsUMVTuq0IKjmS51Gl2wwu/DnV4m1e1ksWSA?=
 =?us-ascii?Q?lZlFm/i+Ta4zM1pDrgr2ea40baHHIwsCwlRc1Am5a1YhMvSShL0hTi+ELY2i?=
 =?us-ascii?Q?bBH1jsuVWFO2fDU/Im072srYIvXO6b87KLfZUIV3Pe3ajSAKV2reKD5lar4E?=
 =?us-ascii?Q?AwqnCH/8EBH+B1NWqOAQSThpfq1lfTFYD69DDx/e3HJ/n2p6c7fstLACnDoU?=
 =?us-ascii?Q?BDykrfwWL+WJ+WVZdLAyGkTw63vsxN1k1SYTU52O92cRx8jD024bO0TsXWIW?=
 =?us-ascii?Q?nVEMVvlcFHyL9QuQtqCXvKK8hjZb8WikqAqUa0xnDuaMIAAwQ+Z1zUdFWKJY?=
 =?us-ascii?Q?VhEWbJ6SbG1qD1RI9tfrkPoHQcj7/udbKq4FjQ3/05/91c3c8X5ZooT41CL/?=
 =?us-ascii?Q?1AoDe7+IMHkRfX0lVz6iAlQUzeYWQnrniP1bQcsydjafjGI2cs9iWUBCg19S?=
 =?us-ascii?Q?hzAiwaGUaSJC1D+JAWXdxJ/Hq8AkirnXxgLdcoZV6ZvYPZYT7WD/S6S2D+/Y?=
 =?us-ascii?Q?hUoTxPYZcWUzovvmoWFdLvetpzl47wFi9r5hopxJPZKVTBf9gj9eMM2T6KQp?=
 =?us-ascii?Q?iBz8F4sDGLhu2Kp1VK0Shh8qQJX+9c4cY1oJZjuQWGHaHdexNlaLfpfKA2CI?=
 =?us-ascii?Q?+WyE1NfHNqlYTdc0xhtaw66VgZC4sReyyGIpVC7c2/r5X/cOsa02RbfKuZJM?=
 =?us-ascii?Q?WfV2khy+gA+YdggHhD26gxoXpitVrMu4WpEOMfrUopCFezhYV306k00O67Em?=
 =?us-ascii?Q?tJ6f3+LkBSD6gyq8X5u2Xe3+v442tK76ZaCk4FCmLE4JtSQrpx/88YHNSiOl?=
 =?us-ascii?Q?SVdxjDvtcSO0pAJccUg5b2D/EBprATmMtcPfVGcqd57X873iW0zdHdzi/JwF?=
 =?us-ascii?Q?Jc1aAACmaZW5tK46EgRTfD9UL5LGwPxonkLP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1nC1iLpnd1+1JAVOfEHV4jvJ9pDI/F/Nd7h0gsrPOdwS53mW3aIU3BE3MvKv?=
 =?us-ascii?Q?UkkEAiWVPV7Vi88PAuysWpx2AWxDqZu/JjVg40q8I3VaZdeqMIK/JEZ6jMn4?=
 =?us-ascii?Q?KPdJai4GYOJlk8upF+hy/RsaxCkxxFd7SAdR+WsNAkbD7xJaHAXbYMQJNYQa?=
 =?us-ascii?Q?NI+PmVmQEv+W/fSXGVxzA2ECUjugkRYs1J7uK6TPHq7L4s5nsLnovWiuSQqo?=
 =?us-ascii?Q?MWw+mokhmWe3/dzf+a57Q/1HLXb68Y+AcaAyI6XP2jNmDMrZ4KBrvWnwK5bE?=
 =?us-ascii?Q?uznrVV0pyp1vGmQuAh7bs2hnd7Qk7IN0P3RAmA5LqLxyXczkBc3XRzo3HPKr?=
 =?us-ascii?Q?D7l/Jgtb85n5CARWEBuasq7JrWBbPAcWORO4CC+Kz2bhwpiS7DymRlwDNWsk?=
 =?us-ascii?Q?683qJ3hpc66Llgv3G/XCVKwjfMIIYrVjQV+mKCjXSUolIGQtjzMKRKYfc2ew?=
 =?us-ascii?Q?EIcwR5sy2NrUTACv55aTka76DZTttzRlgaLoKd8ssCJ9zWjYGNyCyXA+M0nV?=
 =?us-ascii?Q?XuTUcoqraixX5FzZ6mVIJISCbwHKF1q9sN6q6cXz5D+kK1mijdnKEhf8oRCO?=
 =?us-ascii?Q?2sE6i48E4FnsA4EhXQugxNp8HbImwj8HtGcYq1xhEtOCdd4PvUPevC11KXXN?=
 =?us-ascii?Q?QjRyqSqN6/XinbaFmUwLBlOqtzIdw2Fe7z0feEa8cr62QJj3qmCU4IwzqsvH?=
 =?us-ascii?Q?JbY7MvXpmgNygjHDsNsPQlk7I2MlHj5iIdFb6RsjIYtdX1F3k3VZ+NJGcdjy?=
 =?us-ascii?Q?yMyZE2bkSnTdHwVkqsg8bbYpyeSE4HbdYmsolwogPME7cGUGG0eolOftHNAE?=
 =?us-ascii?Q?VvNp8TUwBpZWefUabs20DSKdstTJCg36nDTXHPmYCf9EoOZ8bZGx3U4N7XuA?=
 =?us-ascii?Q?BFYoJCgwT1+DAnxKFlouPXRqtMzmZBy5xiE1dkc9UtxKCCTOoKAzWT9dcukI?=
 =?us-ascii?Q?P63hRzNTgU1k1BH+NAYuRk/4pMG2IbfT15mzpPp3UkQA6OOYxYothFuFxqhB?=
 =?us-ascii?Q?tvPeyV6gjRrJ2NtCeS2q7Tanx6BL6YHkFFK7FgUACYcY8JERhDv8wM+IZlVA?=
 =?us-ascii?Q?nIgF4DZEU5eLh9wg85uPZNKwlj5JT+faIqoGqHLhPuQt2IkpVNTGSJYYyTui?=
 =?us-ascii?Q?l5kZqwM4IY6kifKVKCAtmQ/OF8gxc1/8IQoCGLm/m7W4DUhkNOkI02d8UHKC?=
 =?us-ascii?Q?jV1t9t7tPx66gHwoLTqSyY8PW7dTW+fFDyYwaxpgLq60x4kDxsabo+MTiKuY?=
 =?us-ascii?Q?66I+ynEwJekDfPSM6IQ9FlbWtwuy3irxpd58n1rODi37YJto5Za8GgAIj3F4?=
 =?us-ascii?Q?rLuKi3FtX/e/0hxz+bB+n1XZuAINMtuTO3fQIh/eBwjeU5GuRdjEz6v4mZBy?=
 =?us-ascii?Q?rPsfmV5OIuhyBLtn+R8EIfr6eKbrYMa/7K/RH7ajjmC6D52Wq0zbohl6VYHv?=
 =?us-ascii?Q?NjsyMJoBug0cYgKmddkooaEAEr0LqcjAaE+eUJ+s4qopgVcAC6QfErH6Ju//?=
 =?us-ascii?Q?PpA6UCeYjCwmAfyfqXS+miJvAxzZxBEHLaNNtH3I4nAeE5aszvOVzN4Y1UEL?=
 =?us-ascii?Q?ljpeYu64ulRkQaoKp04zpLJavvkH7ocGZMhuoiHt+ch23l31FZU1W8a8nXEF?=
 =?us-ascii?Q?nw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0a34dcd-a1c5-4767-1fb6-08de113132ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 06:06:53.5889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IMt8HFtZ7bTiTU1JSIe9fSQ27HhIlkT8MSRRZPR7wbK1aOTS4R5e7sViS/zywFLxngijNw8LFD+pdk/XBXojOA2ngQRfo2dIqlAt0/ia1Gw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761113219; x=1792649219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aaSZJCsUaU4EAimgdLAWdF/c2ScWywui6FnyuTrHB/s=;
 b=MfxNtd/fHxpvSwWqZUkXzKkKGA12AKDfmtp1DDwSAmGcaOlyKEu452W+
 NDpxKaGCHFwC2WjDEBkh6BNN7V+pLsfrHD4Pq+UvOeAVAR6i1W2qVRAxg
 Nu5KtZsOFikAPcTwdCkGtg0T/fxdy99lKakBTl8sjIBFR/SDX1rkluNDY
 ddHqkvry5Tfgn44rF8huG2/lJXUx1FgeQgOQ35BE+z6NY2koTuWfZO3ju
 ybl5S4/r9u273MRMhCsyJwB4jwHnJNe18aBcQ+HdBHPZOrvP0dWaq6jCF
 oZ9RU1vfBx/+KEpXwwXXdODWMDHNgk+Rk4T0hwX/d3Fsudeh4eAEh2cQG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MfxNtd/f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: avoid redundant VF link state
 updates
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Jamie Bainbridge <jamie.bainbridge@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Dennis Chen <dechen@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S
 . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Robert Malz <robert.malz@canonical.com>
> Sent: Tuesday, October 21, 2025 5:45 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S . Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Czapnik, Lukasz
> <lukasz.czapnik@intel.com>; Robert Malz <robert.malz@canonical.com>;
> Jamie Bainbridge <jamie.bainbridge@gmail.com>; Jay Vosburgh
> <jay.vosburgh@canonical.com>; Dennis Chen <dechen@redhat.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [PATCH] i40e: avoid redundant VF link state updates
>=20
> From: Jay Vosburgh <jay.vosburgh@canonical.com>
>=20
> Multiple sources can request VF link state changes with identical
> parameters. For example, Neutron may request to set the VF link state
> to IFLA_VF_LINK_STATE_AUTO during every initialization or user can
> issue:
> `ip link set <ifname> vf 0 state auto` multiple times. Currently, the
> i40e driver processes each of these requests, even if the requested
> state is the same as the current one. This leads to unnecessary VF
> resets and can cause performance degradation or instability in the VF
> driver - particularly in DPDK environment.
>=20
> With this patch i40e will skip VF link state change requests when the
> desired link state matches the current configuration. This prevents
> unnecessary VF resets and reduces PF-VF communication overhead.
>=20
> Co-developed-by: Robert Malz <robert.malz@canonical.com>
> Signed-off-by: Robert Malz <robert.malz@canonical.com>
> Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 081a4526a2f0..0fe0d52c796b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4788,6 +4788,7 @@ int i40e_ndo_set_vf_link_state(struct net_device
> *netdev, int vf_id, int link)
>  	unsigned long q_map;
>  	struct i40e_vf *vf;
>  	int abs_vf_id;
> +	int old_link;
>  	int ret =3D 0;
>  	int tmp;
>=20
> @@ -4806,6 +4807,17 @@ int i40e_ndo_set_vf_link_state(struct
> net_device *netdev, int vf_id, int link)
>  	vf =3D &pf->vf[vf_id];
>  	abs_vf_id =3D vf->vf_id + hw->func_caps.vf_base_id;
>=20
> +	/* skip VF link state change if requested state is already set
> */
> +	if (!vf->link_forced)
> +		old_link =3D IFLA_VF_LINK_STATE_AUTO;
> +	else if (vf->link_up)
> +		old_link =3D IFLA_VF_LINK_STATE_ENABLE;
> +	else
> +		old_link =3D IFLA_VF_LINK_STATE_DISABLE;
> +
> +	if (link =3D=3D old_link)
> +		goto error_out;
> +
>  	pfe.event =3D VIRTCHNL_EVENT_LINK_CHANGE;
>  	pfe.severity =3D PF_EVENT_SEVERITY_INFO;
>=20
> --
> 2.34.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
