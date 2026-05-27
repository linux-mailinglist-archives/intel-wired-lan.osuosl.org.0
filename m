Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCJPDb0dF2rw5AcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:37:17 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 732DB5E7DC9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:37:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A88F6143C;
	Wed, 27 May 2026 16:37:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VHCsaT6OOOxX; Wed, 27 May 2026 16:37:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFAFA61443
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779899834;
	bh=L0/IC/kZ4KJCYys06dx15aq2Y+U30MGqP34Dm3F2Mao=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gqBKD+1rczFHeVR0OoClvVzrbUiowYt3UO1gKareFLdeL5PpPsGm+epeMQ/xLFImr
	 zETsJLYo8YB3Y29awlVDzkdeDQ+2fQB5xC32QtejKQfx+fN9kbu3s3ogqK2kJtlicB
	 Xtuq/NNHiRHK+K9g//LVB4xCqzendN6rQIDArQdPQu46Dxz/TSKwCP/Px3k8u4fF9p
	 nvYOJa7fD7yheu5q0ylW+C+2q15JagDfkMFqdGiE296lrKcjFUtPryBIHp1XCIY5mp
	 Hve3SbyqjEoPB5/kl6yLTEPBeKgCDFFjkGkFzzmYYxk7ayP5Q+6BYfFu/zFWTZsmJd
	 gnkzSwjCdX+3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFAFA61443;
	Wed, 27 May 2026 16:37:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BADC3344
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A98BE841F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:37:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id slnjk8P0rkKO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 16:37:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B036E841EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B036E841EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B036E841EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:37:11 +0000 (UTC)
X-CSE-ConnectionGUID: ZaeLEk3QSs+HwyIarPqNKA==
X-CSE-MsgGUID: LA4ZCkT5QtS0NH4a8RFpuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="103412421"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="103412421"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:37:11 -0700
X-CSE-ConnectionGUID: /cwkFRL3SwiC9URA8h6dOg==
X-CSE-MsgGUID: Ulv6PV3lST2MhQXvIj9nNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="244116425"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:37:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:37:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 09:37:10 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:37:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vISE0xt9PAASe/8VhMJse6Mze2kX0tZG3zA5qlUZRDaLDq/EUAnPbqsQvwCrhINHNOCSg4lmyELujn8JkbVSoKzO6QtJNvePMXsRPpkT+qECiyKW7QJLlJ+QRdNHJhb7gxmSuZ5lIAva6Cc4iLSgRF7V84Domj0T10EF9crpD39gIR4obf6Kn5QgeTVSzmoi7m6OtGCAJ+xjkptCateLPOddPpgWLeIIMw7t+xXdr+xQq/nMMDlfUvDZUqH6avOTvZl3vC6CLBwmMKAZuAlLZwVmXVqTV8AePqq5ViKwH17DQeYi7dyLzMp0TyWHxtE781waBvDdX9VyxSrDh5SK8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L0/IC/kZ4KJCYys06dx15aq2Y+U30MGqP34Dm3F2Mao=;
 b=Fon2ArzCpluUSji+5qZKT4j3vz861B1DgAt5DSAcGirPZgn69nhVyWMC21oKhJLObzCF4wq8UwKP81UPVSgLzEBqGNjTxGOqqGNeQS46EO+e+2HdezlaJxEpl8meVqDyfoYVU0Jzua4t6oTAjg59Pok+MFqCW6TPbXy0cd9V0i8YUkyGZQJaIaEKMGeLZ6UeBoELH6IM9YZKhYDHjqoMvVHiKmXdgQzBgJr9h5GDckVcKSyJUXkRza2cFLTEbjm5XnUkwsx98h2p9/fyyaRrOg+p+IsWItQleExFbS/CiLt63kbpamCf5xr54VfICnV5NrnDUNgYKKUTliknaYbaXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by MW4PR11MB6839.namprd11.prod.outlook.com (2603:10b6:303:220::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Wed, 27 May
 2026 16:37:05 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 16:37:05 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/8] ixgbe: limit ITR
 decrease in latency mode to prevent ACK overdrive
Thread-Index: AQHcx1lr4DgkoXu1CU+TEOw60BoCVLYiXzJA
Date: Wed, 27 May 2026 16:37:04 +0000
Message-ID: <LV1PR11MB8790EAD977ED6D3B45021CC290082@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
 <20260408131216.2662245-4-aleksandr.loktionov@intel.com>
In-Reply-To: <20260408131216.2662245-4-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|MW4PR11MB6839:EE_
x-ms-office365-filtering-correlation-id: bc901e9e-4950-46f6-b33e-08debc0e2fbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|38070700021|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: 3WLF/KMoHjzDNg5TisJacplMhX+Rckgn1/EMgsKrj07qAEa1VfVs2TcSy5BciD/X8Lp3W3WEQq5TMUMaD7iTt9mJc0QwUGlbMn41+DvKuSGpEYUByRF9T50sB1HnzSYNFkAhJOkHU+g7DwgBptHHsHNzFGLzMdnTFw4xbjneeO95mF0ReXP6wrLtCDKOXB+qEjZ3TvG+Qrul3/bsmzJkDzU6oZxWrsymh/ZksNCEEMxXoaboxiaGyqGW1cOc+V2gKipldn7jXz80hu2ZMvvO9d9V07yOCah2v/s0R1ZrvvCXmKlkmvaM9IRbsz35vi0yymXLkgtOKmKTRmyCZzTPe6gYjvlvvfnd19Y+aM+xC9BQ1/9xZWmK0Mawu/oNHnTrfFYlEh/S3b9CBsErfavxIl4/oU3+K6PJbiivxl474oEgNUTHdyvrZV5IzcU+s1UdbcLWEwc7flVyE43f2YHk4e5ssWiSLFoiGY0vNSJO1KjKFoXBJJNIBBjSIApKo0F2Ang53QdhnJP/koo76fmjSKxggJn3VaXDyf07q7pSXzPTXjpJWwIgdOV1/y+kEDQ2N9m01cRa9yTbk90dHKTKJf2FEiAhd9TV6IutLIg6GNWffEueTHr/Ri9NfNgRbrSuTMX/X1U3Z2QcAwP2V5eaH1b7rE3CFu9BpXnaugTd6ycuJOd+Dqqpom3m4NrmeLC2FG8gqmWjjUSLfBoCTt+SoIxlxr+CS6timJ/gIy1tsh1sH5HQp7qwhJ8kDuG/osE/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(38070700021)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wzk3un2vsVfDe9aHyayUx2y49PMRZjvzqjlDA5oYTiM26F994z/du6d+91X9?=
 =?us-ascii?Q?MYw5j2+D3fv0L4iGXlV3JmPtpOUOi2xIBc7Bw134LN2ouf4KpCm/TYCG6x7Q?=
 =?us-ascii?Q?x38Smvd1ZUNqKd6k3+e6+t1/o+Oxg81yggEgeJHScPk4+n5jFoY0UWc0Kllg?=
 =?us-ascii?Q?Dxw7Wfsuy1OArn72Fs98OzXlj2J4bdQyTHfMpeYzbXWnzNdU5wd04ES0YeXk?=
 =?us-ascii?Q?LGmGyCc2l1eGVXT0j8sD08q/zeSh6SeyAEeBeXFoYGLwMHBc6n7M56/y1N71?=
 =?us-ascii?Q?47Jt8OwIhd0K4JBbgkfy19tJ+y6oDF9nuNFhdKX2dX2pjlMxuU1MbfZHXf9E?=
 =?us-ascii?Q?EUb/d+4L8iZqIJZpJuzLHEPnv7FueR/Yp5TZ6rRXPKzIJnvvpRiOn5nmUgcS?=
 =?us-ascii?Q?dSi9tZGJOkC4pvddEom/muE2vRCPoDa/Y4U7gvjfGywmPtpCyKJVZKQES8Ur?=
 =?us-ascii?Q?Fq6jZvTIl+nw3c34bM0tkyO/WjDFHdbD9GCHK7JVhOWPC/u2EuYdbvnCk8D7?=
 =?us-ascii?Q?X3H/Z0fVoOo36KzZ7hp+cDF7qnrsjxxn/90jyxmhEWtdPqTdIT87WuvCxNaa?=
 =?us-ascii?Q?GJSIZ+oXtjTC0EbVFiBizWMKA4ivQbqLIRkPLiHQDZLT5zSqj3XxczgCQ9gN?=
 =?us-ascii?Q?HNtUxqwPTC+BHGzDjh58Cg+ZA+2yinLr4ALrxMgymTxTDYxf6ftPEUFQp0Wn?=
 =?us-ascii?Q?Ya3avsbi8Jgqx1Ny8L/kWXw5oOEGHB3qatQAGvq8wj9t+SHVteLd5Ket4YTk?=
 =?us-ascii?Q?xlxGuJWgo5j4pc9uahYADzt48d9a5kEv5t6F2XfOnfnJwYPfAlBKVWQGKI7K?=
 =?us-ascii?Q?c36yMjJ6+IgkcfM5VVH1iAo+s4ti/OuQq/871Tqp8sxznV8p2rpr58gFF7ju?=
 =?us-ascii?Q?Hyo2ekvbQ4HqfAhtdlGX6vuDr/wgOUev2V+fzanOfZqB8pj8WDdxm6YSDhrf?=
 =?us-ascii?Q?CjiRPtGEwA2J9baWZZTTf9TK3/oliSe9eG2b4LkaTblrONDf0Zg4bj+bZf6V?=
 =?us-ascii?Q?pEv93PcYxRt2p/3T8Plm8ZJu2qtk4ouhhX0jbVSrcKjuSy/9eYkMrKExguN+?=
 =?us-ascii?Q?Y72tyAmtqRXtKh7V5AXCOQ35Fp+1FTHDc/UBGlB5mUA0z3dx+EzBqMB8GM/U?=
 =?us-ascii?Q?Q8SLJmaXm+2ODqKvTcKKBUUpPJfVhPyzAIXSQtPkugcFwEPbpi06VZ00C/5j?=
 =?us-ascii?Q?+3NoKbtoii9EAW6zVMQA+nH66+YUXXzEFa8oWfjvzsQGmlMMNL5ZIoySsmf6?=
 =?us-ascii?Q?XbHPZSpTjcYNdx26LZkn0uZDwQsJ+eJqKZy9g49R2BgIbLTCi0ufbTo6LQ5q?=
 =?us-ascii?Q?c0JdB4MGI37eVSTQ/Rhhlgi0dXW1uKp7wDedwL7scLsClpdorI3vC/7bkY/E?=
 =?us-ascii?Q?XEHsFLPX/35nN3NTcuDPPo9nLgrIUr7wC7pEYM1dqlsu8pRw7xmuOKdgpImO?=
 =?us-ascii?Q?M1uotUJmWNs/t2BWgJfhhp0b9QJtHLPVI/57FoN9Ou/CYUdRfqkuFlGByOf2?=
 =?us-ascii?Q?8VpYYmPb2rOVnZTBsnC0FvE/gRdceDoK9cz/sZ5V7l1i8+4AEioFz6aqGiQE?=
 =?us-ascii?Q?hZN5iBUrC2vO09t78SmtCMd2vp1CK0AyeY7WqBuONKsbB2ZCvHhF+s/c+qLS?=
 =?us-ascii?Q?NwjSn2EUkPzLgbqFlz/l1Q8qRwbQKRWWJrH4O+hcfH7fHSzMUArIuaVkFFxm?=
 =?us-ascii?Q?CcoxHDooc3eOSUZ+1gTlGUPs+GnSau8hl6BJ7Dg2yWIGjx/GezN6d3qPcZ0R?=
 =?us-ascii?Q?nTYMCA/t6A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gUTBgaFHsuQajbmOfCnCijCE2nDDYucZamMx1ZKpy5GiAMjI59jOfiluDGiBoj7Yeq5BpcXXxmpgWhpHzn+lru6DfHVAnyYBDw4XORbq+edxdUD74mXo0oNwwSrN7gZgTaMDVgpr9XoOcgXist4P7/SjqYd3us8GXDyOoymrFf2Yw2LH+gW67+Ucu0/xFJe8EUzeyvXM1ps9mm+H9/3sSjBqgb+wcSPksPcoM1iIKlbS6TWFWL26z2nBZahh9uy3rEM9EwRrupxS4PhjfbOCjUFKip+dlXpt2yy64DXFwQJfVztfxAl6WO7y+plUA745MBW5Fh2BfhR9IzqY7PKSgA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc901e9e-4950-46f6-b33e-08debc0e2fbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 16:37:04.9600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xaKqOqYWgDYmZSlfzKp1PM3h8P/YKGZFktMRNHMBr5/cYA1FuhxWSdUMFQCSRDw6GU8VfhGVqLh0yXtNPF1w2Q8SVxG+mXEisMc0Oju97jY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6839
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779899832; x=1811435832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BuFGN/9q4GgVWGiEAM7KXuk8FBDmafeUNTnk3Ss8org=;
 b=muxdeakgSEgT01lmNT9OiYhWGDsvK7MD4DzJUUmGHMYlLwIkegzVcfyi
 0ngox81K4gQClV/oqN+fjSGH5PAnzLENfDaBoNSnohui9mJF2baVZuNbD
 tmfCCgyUhxr/d0NqbtkTrcWreRa2P0jJQBL655hlFgC5x2qXOUG1ImNip
 jd5LfqkbyQSHhpnSuIbvoVERZnXFZPlGNDTb3A5LWOIMkqYM45t5A8SHC
 sDIyHlqtyQbXAKUkVducRRBQLzi3pR4pBJQ0ic/EUgtYZ36uuEgZGB2Qs
 tfVnKLm/iVla36Xjw3RuCadU7Qw2gbm+XTkymcEkmfsnBoay3M2Yh2r+P
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=muxdeakg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/8] ixgbe: limit ITR
 decrease in latency mode to prevent ACK overdrive
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[LV1PR11MB8790.namprd11.prod.outlook.com:mid,intel.com:email,osuosl.org:email,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Queue-Id: 732DB5E7DC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Wednesday, April 8, 2026 6:12 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/8] ixgbe: limit ITR decre=
ase in latency mode to prevent ACK overdrive
>=20
> From: Alexander Duyck <alexander.h.duyck@intel.com>
>=20
> When operating in latency mode and the computed ITR is lower than the cur=
rent setting, the algorithm can reduce the interrupt rate too aggressively =
in a single step.  For a TCP workload this means the ACK=20
> stream (a latency-sensitive, low-packet-rate workload) can drive the mode=
ration down to very high interrupt rates, starving CPU time from the sender=
 side.
>=20
> After the speed-based ITR calculation is complete, check whether the resu=
lt is in latency mode and would decrease below the current setting.
> If so, limit the decrease to at most IXGBE_ITR_ADAPTIVE_MIN_INC (2 us) pe=
r update.  This ensures the number of interrupts grows by no more than 2x p=
er adjustment step for latency-class workloads, dialling in > smoothly rath=
er than overshooting.
>=20
> Signed-off-by: Alexander Duyck <alexander.h.duyck@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2:
>  - Split from monolithic ITR cleanup; this patch only adds the 2 us
>    per-step decrease limit for latency-mode workloads.
>=20
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
