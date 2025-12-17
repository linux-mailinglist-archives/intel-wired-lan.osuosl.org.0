Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6962ECC768C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 12:46:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A0C580C0E;
	Wed, 17 Dec 2025 11:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VhI2y3KsO7sb; Wed, 17 Dec 2025 11:46:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 083BD80BF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765971973;
	bh=H9C/m5CX4yWp/Q/xxiN+w8RxCFu6/LjnVlIYX7Ox8IA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G7qZCo/jZhgCKbbTl94arpbiYj8zQilAr8GKz6Q6lhGIQGfgFQ0Uk9XFUftHf/e+B
	 RfGI3w+q7TdnsC0P9wSKCoKzaRyrXP8BpoqLCAP81FzqEo4FcqjL22Ut5bakuh3xEG
	 sAE1DRRAKS+O56ApLRGzNJ/yWwGidzwxkB2LvmD/K4dvoZgoAKxjAepUDAkfR9+qUm
	 4ZAUjth1sTcd1n/b2CJ/9R3j7hP9U7xtestCZMicDfo8URz5oP03pUrdNXIw1PEd66
	 esiYQHlrk3nKns+SnU7X2P8TcG3wVnSCteUp7jW4sfkqx7V6Y6EUeCwntppbIyDERe
	 t9IoZzn5eqKEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 083BD80BF5;
	Wed, 17 Dec 2025 11:46:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E4E8372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 11:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 501D060788
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 11:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NyoKQld0jPha for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 11:46:10 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 63EE160609
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63EE160609
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63EE160609
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 11:46:10 +0000 (UTC)
X-CSE-ConnectionGUID: +Hv0wUANQeKgE25i0I680A==
X-CSE-MsgGUID: MPhxXAU7SzCvleolCPK1jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="67874061"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="67874061"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 03:46:09 -0800
X-CSE-ConnectionGUID: 0lau9OtUSrWcY3YHvxsE6g==
X-CSE-MsgGUID: igmuNy+TTbGqQyaq8zqfPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="221670968"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 03:46:09 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 03:46:08 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 03:46:08 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 03:46:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pd1cc57dwrXyWfw6p9kKRVt6LUd8AWxoDS+a3sg2K/Nd7HxqbqJrG6/xPqOFxPwIBfRiDv3t0ccbNC3UojKYH0rYZABTIJGuLDGoHPDU0itentc08wF/wGtwzxJTv4wO2AA8FRa+YRmGoQGHpvD8JgfoiowZpDlO4ltClGIC7jR5RDX1cK4+2B3pgY+B/Meg7c+C1XYWb4O8xy1NEU3Erw2bdYiThy1ofMgAUKdqzrgbIcsC9yUbf2voPD6HYcyZzbgWd5ofT4nj7v/TMinHgAtAFBBhbwi3dXd5VaBu3ClcaC8I+i0rrnJhb0ApqcY7BfSGYIWDGifH70tnp5gjZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H9C/m5CX4yWp/Q/xxiN+w8RxCFu6/LjnVlIYX7Ox8IA=;
 b=OimGp1f2ktQGZqN6W3iZsfpVxT/KJL+a8tI8z1+ZCKbmtyfpjC6c8akbaIyaYZ3Z0kE16qofxjRQSXlapelJWvHEbPTZcIZa6MXa+udAcnv4tUdreIubpKIpcdpWCZvQGbGhRP0PLjOTKUVgAlJgQsJBCaao8rst/GUuorztizQzx0kl8pDlMFi20AiVjiL88dKz2Ba1dq1KRx22R3VrpS8nlkzbTad57RAiwdVlzUVWo7EEqF7yR5RGmMBjX9UekQqB+KSpuabwtj4bXyo8P0rS0TFPTa/Oz18eyJjMrGH1unyTa34LFD2TuBuZJT3PE+q/W8KFOyIozDAYT7hYKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM6PR11MB4706.namprd11.prod.outlook.com (2603:10b6:5:2a5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 11:46:01 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 11:46:01 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Byungchul Park <byungchul@sk.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kuba@kernel.org" <kuba@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel_team@skhynix.com" <kernel_team@skhynix.com>, "harry.yoo@oracle.com"
 <harry.yoo@oracle.com>, "david@redhat.com" <david@redhat.com>,
 "willy@infradead.org" <willy@infradead.org>, "toke@redhat.com"
 <toke@redhat.com>, "asml.silence@gmail.com" <asml.silence@gmail.com>,
 "almasrymina@google.com" <almasrymina@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
Thread-Index: AQHcbkF7A1ZzBYHaFEaGixciqdtJHbUluH+w
Date: Wed, 17 Dec 2025 11:46:01 +0000
Message-ID: <IA3PR11MB898618246F68FA71AF695B3DE5ABA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251216040723.10545-1-byungchul@sk.com>
In-Reply-To: <20251216040723.10545-1-byungchul@sk.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM6PR11MB4706:EE_
x-ms-office365-filtering-correlation-id: a8c1677b-1aed-4c73-74eb-08de3d61da0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vwj4aHls3T/YwXqMM5rrV+CmLUlC1Nkjy7SJ6zXTfAWC1eSL8eoXbcTXHhAJ?=
 =?us-ascii?Q?70ca4ql08kgsWdcGxGWXIsAxBE0EHbAi+lbMF+MENmUQWW9hsaKZ5JR03635?=
 =?us-ascii?Q?SG0gkGLQws3WtKVCbll5FbcM/rJEFWNu3zxIlV71cZkYcKoD5b30NL9vLkTY?=
 =?us-ascii?Q?EGfh8YcK1NKP4aqY0LyZQZ9ZgrMvFF7QL11UjByEnIJ2jEFqRu7w/vse43gp?=
 =?us-ascii?Q?4lfpl/6GLmAwGCGiyIDs3UpjPPSzXJMs9y4G/EBgJV44im6EfH/I+8wv6W+z?=
 =?us-ascii?Q?1vO9ecfCbnm57E6GBBRfMOYAIxxQMkusJl9doG+iASaP2cFpImY1BsUKU5uh?=
 =?us-ascii?Q?5cu0AC7WD7z37B14m1Otigau/V9xScXh96/ug5kCdiVIUic/rvNzLD7syMnD?=
 =?us-ascii?Q?0xGis+LUoKRVbB64a9lBUcsZaG8S/86qtSeBQ2JTHmNNZxBxhoKtSRtTcZaj?=
 =?us-ascii?Q?UCjtJUbW0JwhDmGIcYapFlkh57Ijz8CGXayR7CDAEShF/LoeeRvqW05TD58D?=
 =?us-ascii?Q?GL/LEog3A0q8TDap6JxyNFqxbpiayfB72PaLlgAS7FQ11gcYsReJWZ2Kho8w?=
 =?us-ascii?Q?2SXn3BAtWRtJDoABdG4BUmx9QKZ+WqYwfIEaHqA+Qw5qqhC36uw3zm6wCLyx?=
 =?us-ascii?Q?H7LrXXxr3kkix/QhlulJbN2WDrIqzBGM9AXqizlGdQEKJXJl3XgoyAXavJk8?=
 =?us-ascii?Q?vAL/XSQ1jLsvZpUoaV3V7H5TljmO1YIHmE7rVD/fgFr2sIJ8CL+etvnl26Xn?=
 =?us-ascii?Q?97ajr9qwTOgBRADthPieztPDiiciz7PinQaKnFLFJ2YVLv/WCe0MFFpn+Otv?=
 =?us-ascii?Q?7b22nhW/Kcut8tJQxGdZPnsivTrhutEeNgat+ATUhc+sPztI+fnKvz0VRq3e?=
 =?us-ascii?Q?/QpwO/y5zbY1oT4enhwsELH4/KrQdJzWRLsAIFHyzm2kLHxgshR4ffhociBu?=
 =?us-ascii?Q?sJ3rkFeKL+tHCw08uesXY80Ac85NjT0CT48WtCoKQSN9qVYM1d5CFBlYxzD+?=
 =?us-ascii?Q?lNG/NVLD4A1I/tiwurCIdggXKmijM1DEzS+gC5IUBue4J8poEU0ZszOM+Q7f?=
 =?us-ascii?Q?xu/M5ilYJGQMdBzn4c7YemjO+pPdtNhnod7jMbk20KTFkMN4DnNHCnaiLM3x?=
 =?us-ascii?Q?5AfxUOOXd4E2kAHlM7RqZtz9aHahAQpTvfUyaWe28DqW8YpucmEMpkPCdqPo?=
 =?us-ascii?Q?OMc4q/Srnbs1zdYnVZo3RyUBAyWn7A5f5JUXwKdlZTnJ+6mt4LJvG7/RLU1F?=
 =?us-ascii?Q?LmAeqVDOifl+rdGOHliW8Md9OgREw5UQjcx7+/ZdwxDODns/FV8ZRSNEa2Xs?=
 =?us-ascii?Q?j66Zy7xeNG6ntuMST0jL7IiIx9gNTn8deYeI0r3zZWGzvua8+Pwg6BFhg57o?=
 =?us-ascii?Q?tNkvoxCfm3vnesVcCwsrXNb3BBh3awvyBi/bTPtie1ZHmi/3X4/FMFqhFIy5?=
 =?us-ascii?Q?jAUuEzgpZlbyUxAZbHlMNI0YIhzg1UJAV6BdRjJe+V2uCOwLUehk2BJxaWXb?=
 =?us-ascii?Q?7CSqw6ViNzrqDPmqp5LP/x/gvAEQnvd9jKga?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wqIfRSGNx910RkZ5zA1WpaU2oTfB9JZXLG9swxIZgmoZPK7VFRiUOBWqGhSx?=
 =?us-ascii?Q?v1YnizuhvYdLm/8IjKhER/JHiaOzgQ2oIkW+OWxs7n3BhVPqYqQ3heT0Ae04?=
 =?us-ascii?Q?u/ISjlG7nur3B+t0ekeOQqyGwUscOxl5hQDW4VlCjUKskpDE5jkYLWEoZlo2?=
 =?us-ascii?Q?ZPmiQhIU/nwuDkG26EHEDC5H+ztDVp/HCSPBk7cGnX4rYHP8dX9T/7d/ahsj?=
 =?us-ascii?Q?E9bZcC1OvhR/9vrmcMMsJmu9AZu5xi3hSOdn86Y11qXS2BJkPZ29hMGpwIAj?=
 =?us-ascii?Q?qYUkjX3wJbzbSPQSoRmMiCe/qfFGx3RrNjk6C8WAJRXZgDUgzdyUPgBEWmga?=
 =?us-ascii?Q?aCOvE34piEGbXq6hYFkbI00TeFbpUK9lqaDpAcM2twENySw6xWhijQAS8Y9P?=
 =?us-ascii?Q?BkTFV6E1455m8+vDYbKjiuk2SOX7FQOLiWg8vOgm81ahdyipp4mRNhB72GL1?=
 =?us-ascii?Q?cXa1ascfJS7Ej3niwvocP/x+BwXRPKkHI8zeRG36NXIrMsVW/zn0WGliMzwg?=
 =?us-ascii?Q?KWbf5EAjW1wwxQO5ZUmR6CIQ/7cVv6y6Yo9X9W7Vo4/1ABWwYutC7kj+ECxS?=
 =?us-ascii?Q?By4z2WokcRrTjbdNpaYpXy9wn3HknxmL4dZmiJrx6iMFzBGLotSBgly68xRo?=
 =?us-ascii?Q?bRcoWrdH4v13WRvXW18E1TpvGgCyYxAAcqtvVsvCAt/iG2Kdxq3e83kUKm1w?=
 =?us-ascii?Q?jblqokgtV6CaNIqZkk+B6o5fpVrOS4gGDz25/fusAshahpY8wddqtDgR8YHQ?=
 =?us-ascii?Q?0mI7zHIuYdw+LoTSeCd3PJe9f19HBBGHmUVu76tDgo9iPuRQXsH0og6gkw9Y?=
 =?us-ascii?Q?aaKCOOxwvyCp6LtzDCOOaRlkJa9+BNJaV6jziqUIeD7D8fPOWNYuVInJHVLw?=
 =?us-ascii?Q?di+ZKLv/fzNUIWAlI7+QWn7bn1cww6KqscOi2FA6vRXiwFzhvj+kzqX+qw65?=
 =?us-ascii?Q?rTA+ILED3e4sAt37wjwFWELH6YNe7Zdl5fQYldKuRf1592o7kTIt4kae2XX1?=
 =?us-ascii?Q?u8hcFx1U6J8zdAzQ1J3fwoCUXpP2r67MNZ/bMj5b54waDv64nVEw9ZRYq7ki?=
 =?us-ascii?Q?Higr3zrbLeQCXvNzR+lOa+pcAO7/aeX1T8rdDkQjuyO08kxos11iUMZp9XUS?=
 =?us-ascii?Q?vVfg2UCKOAg8rBioQcYurF9BnLKLlcEfqyHoWOpcc+XMoAMjSW7arGiv9fhF?=
 =?us-ascii?Q?odyAqaPtXvyvkkX0fNO6QQLZdishjF16HpcBqZh6dOqlCi9FLUShlTKQlDBE?=
 =?us-ascii?Q?WoNVm2KaH+3qJYufWAqTEiZ5Lap5RnFC+oewxJvtEB8Z6rjcIVfhm8UrrdaA?=
 =?us-ascii?Q?I4QcPAlTTmGQuLteWn7JAIrev6kxHFzLgJzQrBlJO3NlnG455w6/8bcUqSna?=
 =?us-ascii?Q?jnbQ/NxmQnqSD3f5D6vhyqjuB5MfmNTamslayCQ6R+Dj7PyJwP09ce2LEBU3?=
 =?us-ascii?Q?HBVplCP1EVMcqy19cKQc6aX0VW7PbuVrOdiDpzrtRCYaMqm90AdkgJxsxbbF?=
 =?us-ascii?Q?qd05V4r+wrytL1CXhXcRgPg3DT84qNyjmzIPQUnE5zxkURltGZwknmnBaD/F?=
 =?us-ascii?Q?BkNjXXyRYtUaw87ZCOXkhadFivfzno44xx7wBZlQddOuid/YKvIDkCH2xaic?=
 =?us-ascii?Q?1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8c1677b-1aed-4c73-74eb-08de3d61da0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2025 11:46:01.2250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VCNGWH4xlP76ACpFztXJWJGKIgu37F2y5Nocr68k5REfkWtLuZfA0jWO9/+Yccc/IpS5IL7P1P6+1DkWpUx5cDGpfuqqvz13gNbIyl3c3Go=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4706
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765971970; x=1797507970;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u6S6CMHTz6fFWsaLRinAez49nLwJzxeKw6EW0dik2i4=;
 b=k5MtTu3BM5WcTrbomLPCoji9aE90j6W/0O5htWHcPvaPdOSqqGmy6srb
 sKEpYbv/34ZlWg9N+owiK7wNop7+djQ1M7+yPn+J/IFxM/Tzi1V1lk2BQ
 pW0665b4N/e5qnQRNm7Yr+Ti4ahf0T9GW5uA0VlJ5FtZjElyJ2X/inpu1
 pDrnWEA+CVa60bJ4k7cUXKmWYutZvOdKIqA0/NYQXQzzhploetpXXIAsV
 fjGG2UGPndD2XZp4VeP11BQK3mptweVm/gFdQyI9HpFjdPwa7eIyUAmCR
 L2IfrE1j0HeG6B/RAG8pUVmZrnGIawSY+opYLTlTF3a15H708FIdsEJxo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k5MtTu3B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Byungchul Park
> Sent: Tuesday, December 16, 2025 5:07 AM
> To: netdev@vger.kernel.org; kuba@kernel.org
> Cc: linux-kernel@vger.kernel.org; kernel_team@skhynix.com;
> harry.yoo@oracle.com; david@redhat.com; willy@infradead.org;
> toke@redhat.com; asml.silence@gmail.com; almasrymina@google.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; intel-
> wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
> netmem_desc instead of page
>=20
> To eliminate the use of struct page in page pool, the page pool users
> should use netmem descriptor and APIs instead.
>=20
> Make ice driver access @pp through netmem_desc instead of page.
>=20
Please add test info: HW/ASIC + PF/VF/SR-IOV, kernel version/branch, exact =
repro steps, before/after results (expected vs. observed).

> Signed-off-by: Byungchul Park <byungchul@sk.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 969d4f8f9c02..ae8a4e35cb10 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct
> ice_rx_ring *rx_ring)
>  		rx_buf =3D &rx_ring->rx_fqes[i];
>  		page =3D __netmem_to_page(rx_buf->netmem);
>  		received_buf =3D page_address(page) + rx_buf->offset +
> -			       page->pp->p.offset;
> +			       pp_page_to_nmdesc(page)->pp->p.offset;
If rx_buf->netmem is not backed by a page pool (e.g., fallback allocation),=
 pp will be NULL and this dereferences NULL.
I think the loopback test runs in a controlled environment, but the code mu=
st verify pp is valid before dereferencing.
Isn't it?

>=20
>  		if (ice_lbtest_check_frame(received_buf))
>  			valid_frames++;
> --
> 2.17.1

