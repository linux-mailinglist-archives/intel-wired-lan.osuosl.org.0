Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBF8589FCF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 19:22:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7DB8831D6;
	Thu,  4 Aug 2022 17:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7DB8831D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659633725;
	bh=+8IqljI0N6EkHyeiDPXaegjheon3v8widPWzIukFUt8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ld/qOx0AJCXWYkCZCABBF+SZRpHQ/KKCAIytMZNhpVFzSFaZQ/zF6xp/nyruw6Nm1
	 /Zs+L/6YraSkGrxwNdVs1F2lUeeqYFmwAcdyubx37DnQwWR95XC9y9jfSkPUP70U8r
	 IyN9qyRPOFG0jecH3qnkVtBsbgxpVVzNCXvn42XvpNhv/+Dtl39KhwPo5cGSQlPkUE
	 6FoUICC+HhJ4gCRtSCHD9wtQRzgq7Ew57lpURBsebO4LxeY7XOPy+FN6cbMQchZPwk
	 UO2ZtiIoQ6b4FRXghaCdlqaHSzkyLAOjV8FmqnVMzDRbtQSr0FUM/k1prIqPVPOdjV
	 TWjBBB3hDLEKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G1pHxesr-3jw; Thu,  4 Aug 2022 17:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F9E9831AE;
	Thu,  4 Aug 2022 17:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F9E9831AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 077C71BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 17:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDD8361155
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 17:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDD8361155
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4FTlEi4FBiC3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 17:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6BEE6113B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E6BEE6113B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 17:21:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="276914678"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="276914678"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 10:21:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="745546613"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2022 10:21:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 10:21:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 10:21:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 10:21:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJwsdd52yZHnSlkwOMlvK7Pl6fANxuJZBWtLMxPeWKC+kkDh1vLdU8Dj+P6pt9154FiffTPnt3X0tBKDckDr8Ag/j7YR9g707RDGQnYVr3NZR17BG9qV9BUARswNHGQwtzQ/hFfq6zuksVRS5H16PioJGi1TMi0HhkcCLw5wcQMDxck9WgbfavznuglqAGHLwvxiexDvvcjEXpYr2/sVUOuK5Mt7sg/guRN4JdeDBCwC0vOoUHIYyegZa/r4z57zEhwmsc/Qj0hyGX28Vl6dTnC8nVKTjQZVsIVKaBjJCFEDEvF1UwvgbgRt5CRqzGEoJ+fIf6I8WDEtDpLuHKC+fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gNUZcRoUx5yC2N9+dPwwicelCcoJT5tzNQ+lSS10mSI=;
 b=KySVmqGspvIsSI89AeBb+VZL9w21xB2zQyP67vHHc48JAcKGOnUdcbMu+2bj7UcAGuFfNDWGO2iv6nVLuiWPCqk7CLkRxWp8hKJRTwO6LH6qhkHZs+ynEHlvzHX6aj6Z7pXbu3PM+PFDdM1FyVNlyu/pIZYoBSBbiL7M4R47zkRrCcACeS165WMMMOSl7TdAGP3/ASL9jRrwrcVV3nj7pTycxQeXcssaxzwVMA5SP1yUQwIcKmhEp91zNUQ6UxD+eTBjsyYob97Ahm8FAeN9+JV9FNR0mc7Sx+6YUlOJyl0+mb+zb3BqsVv+Tjpa7SN6w12BoBkp0AzJCY/ugDY5Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM5PR11MB0010.namprd11.prod.outlook.com (2603:10b6:4:6c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.15; Thu, 4 Aug
 2022 17:21:56 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5504.014; Thu, 4 Aug 2022
 17:21:55 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Implement FCS/CRC
 and VLAN stripping co-existence policy
Thread-Index: AQHYoYpqR1CQJePWZkKDQNHLiJy8Wq2fCieQ
Date: Thu, 4 Aug 2022 17:21:55 +0000
Message-ID: <BYAPR11MB33673F550DAB335594FCB075FC9F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727072406.597424-1-anatolii.gerasymenko@intel.com>
 <20220727072406.597424-3-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220727072406.597424-3-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65aece53-dc3b-4929-f02c-08da763dd476
x-ms-traffictypediagnostic: DM5PR11MB0010:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZISuQwfN2VcMisByHM8nKLsdgmAgsJpKhekpOLR8JA2o8RB+fNE27xxO0euyF7YnBWv2I2DsD1LWXajJ5GN5SnFDrc42mplgsq8b0BuO74kk3M8lOV6xCNFx5gdFgWSHWTw8TO8CICuaq63vJaEz48+vhF0TfywuG8kX4pNH/AfpcolXk4nibKfxbyabyVRGqjs8hz2xTDEgwMjHiksBPl5m/Cs3FD/STS5XuiwpsAcNHOwiJcdmvaT38+w02vEgN6uJ0qkiw7jM9k2g2QSDh0n1TmIm2mQQbs4E9EDatzTTcK9/PRbYvXTTRHlClhBIZatM52il95Mv+/BShT6V28OY/mr7KV3Y0/dOZK4MnBhE9eCZV3GTKEpTvAPEyKi75F9Lit6lzx7rBK2//7CzA8lgwHe9RPqxEW6YXi9M2yWOWQ8fINa+56RIKsWZe0KsfWANuuIb4FPcyFMn8wNnDaZ6KencsljN/B36retvDNE9lQy57YuU0PVfArBNM+EFoRqoduZ52aNgJbm7RDLY4s65UVCmozGN9f7vnjkTeLM8mJlwv2cxz3JuQiEU242sBJAPkm+j839nB9IPzcqAhUyaZVxeuaHxMRz80Ch1Q3X+bPAejwdE1KjVTUj2K3OHy8Y42a4IuKmIHVFXRhVFnzwOZ82Ky//LLmMhPN6rjyaNzI8/BTPJ59CNd+LLaZwFm8y8S/acj/33+eKGsxlQ8912WBIZ/MVKoMizAdvYx3dFFtVju68n9T5bPNplqFO61xr3iEcQiR1tJTMiXP4TQ/sVcZ65VsJnlbV2sPj0nMRlFMmE10PSE6zbF3u2RZjXZCyd2MlsZ+y0rOQYLD+wbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(376002)(136003)(346002)(39860400002)(55016003)(110136005)(71200400001)(52536014)(82960400001)(38070700005)(4326008)(66946007)(8676002)(66446008)(66476007)(76116006)(5660300002)(66556008)(86362001)(33656002)(38100700002)(64756008)(122000001)(186003)(478600001)(2906002)(8936002)(53546011)(6506007)(83380400001)(7696005)(26005)(41300700001)(9686003)(316002)(107886003)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ByIq7pg0PDW1euKcI8GwPSpkJy6TWxbZ/82nfe9cIOJLYQnMAiTPLWWJcjpc?=
 =?us-ascii?Q?+rR3qIg6nF6R9NRH9OI44E3Cpw4PTbgfgyGUFILfKEyIfcD884ZQRuOCMKfp?=
 =?us-ascii?Q?qrNaBayeS7LT1IW3CXNuaYCnKzEXmthNPAiPmA9922hkCDNBDRD+lIVGWnE9?=
 =?us-ascii?Q?RdyMz1RPekO1PCrMdFMxA6SCkTRuUZRCVyiVAW42qQVTpDFYgu6NyCYcxtdq?=
 =?us-ascii?Q?BdCd0opn1H8e8oP0YDUblx9uSYuKgWpyaLnk+7PvQRYIchCWF4sZJzKt5HDo?=
 =?us-ascii?Q?K0iJTJ/t8O7Y/WLiaC2vXz32PW3NmKtkklzf9VLflIWqJqnJxl2YXatAJGYP?=
 =?us-ascii?Q?08EqAfcXRuaMsSSS+9snNa5RwqoZ3w0nOGw3fhaE7WYWWipmwyvIAScvJc6i?=
 =?us-ascii?Q?dzN5vzZr7Rjx14sCWsVLxXqshkr9JFDMXqXPPWhu03aQaKPf16iZsf9yWfmF?=
 =?us-ascii?Q?tJPYGf1jcAnOTFF3y/cwTQP6+5gUp+IXaG/UlHHtyk0hOAOccaYYORvWiK5m?=
 =?us-ascii?Q?UWLB+v9U/EV5kCV7NpApkpC+V6GBK9i6mWZF/ihsmozMRAa+JJrn+57eYK+7?=
 =?us-ascii?Q?/sT7/mc7WNYUThREa954MUqeyMpe0iUNjl2Z0RwXBFVaZTQ4MtGCxfOV+Jpw?=
 =?us-ascii?Q?JvsldRhRTUZs7OSJJecNuXYHlb9SnV6XncL9TyFKdLSlzOpAv9GF6kGnRmau?=
 =?us-ascii?Q?pyQm4F/0zcpbTKl138QzHpoX5y7JYo54Dcv+FH9c+Akob93h4n14rR8CP/xU?=
 =?us-ascii?Q?ME1l23YaKavCWIVIIk7+fmY3CgjK5nxYR04bUFCohqX0yxWRZRfCwBOvKb+4?=
 =?us-ascii?Q?ePFw70p2DkokR3Gv2ea7wZCPb4Nf6NQk5Wtwg/wUYQqMzV4VXsatyzWqh5+x?=
 =?us-ascii?Q?pgdR5XD9oxV+pg1hPKTb7Vxyj4TBFwca4si7PosOve9Noxe6bLTZQs0NhfAs?=
 =?us-ascii?Q?VytWkCOa7ptREoQFY7xR6h/nzJVsjT3KuVv0C0mjWUGDc+GiQFDSA+3ksU+1?=
 =?us-ascii?Q?GOpIZt7Mhusg7SCAPS36zzg8AhAcd/a1kTbLkeBNKoBKOenhyaKnalAq99Hi?=
 =?us-ascii?Q?gDAg10cozazORFQB70Gikfb/nTPsIf2a8hvBuGZQm9WR4zumQF2R9AvhmWwl?=
 =?us-ascii?Q?XkdgqY+nADU8zcmRiG5uB2b/A7djmlKxvilCjKBzoJ6F5HyAP62YfR+lAVXP?=
 =?us-ascii?Q?5FNBHaK/CA7it7P9+tx+/Hp/m+6zReQ5s+O9u0fAZdEJ73Rna3eb/TKx8X6f?=
 =?us-ascii?Q?tJrnwo820I02uGerEUawK9Rx6cJaKirceW5SlQhH5qvtku33a7TvzJ5SRV9l?=
 =?us-ascii?Q?nrWabUC+SHC5fUtf74iSqfNWynFHnXZlkaaxGddfrmeVHNGpKFTE2LKu1hef?=
 =?us-ascii?Q?ym+H/62GyxdqrwaDW9w9NpzJSF3yw0if6m6eqXkiyUjt9Q4/0zw02ELvM/2b?=
 =?us-ascii?Q?254s7PL0amJ00Om/C3L/AAhKcyijEG6KBta+DIdZ6D7IlHdvi8D1k07+XT+3?=
 =?us-ascii?Q?3uXYqj01Pnhjzxm017/LMVB9msAlT5Gj1TUFVx50ROqD0AuUDZGM/67NIBdU?=
 =?us-ascii?Q?IrmNs+Czr7W/t71GT+0W2Ts4jQXV37BKdhLhHXhj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65aece53-dc3b-4929-f02c-08da763dd476
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 17:21:55.5368 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bBX2PO4RsD2I+1JDzUaN3hNQ1Hjtsh7IAd8ntAWk4SHUbQ9vFoTfs7W9onoIjRzkl3tnD/trzoUHoPjc7a9HSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0010
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659633718; x=1691169718;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H1y0iJk6vTQUhd5sOdRgj1DXEhAaesZzYzbmwxIk0vA=;
 b=ki33Pg+/3I24S34ZcpKouvqrtU/oFmhE1CSKCH2RX6sslAkNyweVEL7K
 CqcdQvGTDESlQpjgnBrWQxfyoYkbzqU7ffStO4ZqJAc7cw9cHgq20nM5b
 qxzNFrrvDBZeiH+9lPQkhioYrGvRdf47uPOlIjB8HHify9vMA8NJcxn8z
 0MekcLZV1zkfjmYl9tcPSgawqxBxo6UqSxQlf0X53XcYPiTy3ZkBwWTTR
 lGosxk8ULlrOOWpQ2ktNwH8OXTYsKQK40+29gfVn7ZrxmvqafE1PS3fL0
 xli4aoqF31dU1slP5dSQ3xPNZ7jTKjKeX0YUM24gYbIdiWqmvQDRUGEeY
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ki33Pg+/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Implement
 FCS/CRC and VLAN stripping co-existence policy
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Wednesday, July 27, 2022 12:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Implement FCS/CRC
> and VLAN stripping co-existence policy
> 
> Make sure that only the valid combinations of FCS/CRC stripping and VLAN
> stripping offloads are allowed.
> 
> You cannot have FCS/CRC stripping disabled while VLAN stripping is enabled -
> this breaks the correctness of the FCS/CRC.
> 
> If administrator tries to enable VLAN stripping when FCS/CRC stripping is
> disabled, the request should be rejected.
> 
> If administrator tries to disable FCS/CRC stripping when VLAN stripping is
> enabled, the request should be rejected if VLANs are configured. If there is
> no VLAN configured, then both FCS/CRC and VLAN stripping should be
> disabled.
> 
> Testing Hints:
> The default settings after driver load are:
> - VLAN C-Tag offloads are enabled
> - VLAN S-Tag offloads are disabled
> - FCS/CRC stripping is enabled
> 
> Restore the default settings before each test with the command:
> ethtool -K eth0 rx-fcs off rxvlan on txvlan on rx-vlan-stag-hw-parse off tx-
> vlan-stag-hw-insert off
> 
> Test 1:
> Disable FCS/CRC and VLAN stripping:
> ethtool -K eth0 rx-fcs on rxvlan off
> Try to enable VLAN stripping:
> ethtool -K eth0 rxvlan on
> 
> Expected: VLAN stripping request is rejected
> 
> Test 2:
> Try to disable FCS/CRC stripping:
> ethtool -K eth0 rx-fcs on
> 
> Expected: VLAN stripping is also disabled, as there are no VLAN configured
> 
> Test 3:
> Add a VLAN:
> ip link add link eth0 eth0.42 type vlan id 42 ip link set eth0 up Try to disable
> FCS/CRC stripping:
> ethtool -K eth0 rx-fcs on
> 
> Expected: FCS/CRC stripping request is rejected
> 
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 25
> +++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
