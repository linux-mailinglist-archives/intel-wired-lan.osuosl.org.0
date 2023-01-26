Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C1C67CF11
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 16:00:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB54B415BD;
	Thu, 26 Jan 2023 15:00:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB54B415BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674745202;
	bh=6v4stAb5t04Q9LPdnnw2P5CWDNA2dNbAjEQgoQ5+gNg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w8iuSRZI3REB6S8h7XW1dfxAtqj/tXA7VdI/7aJ4ePbIX5vB0K4mMkXtk90Qoe1xo
	 NbcqexytW1xp8g3lXQfob6Bnaz03L0clk44nwgheB8g/N8p0+Ck6NhaWpXvqELTpQ7
	 Bm33fkR2MDZwK7x/rktBO43VGMcraQvC8LGzy+HWj9M1ifVef/YS5u3dpO/gxYMLG0
	 52Jpa1T2EBFmGV2bmqZACKzFY98TmXqoHudJoU2bKvqd7+6aJKZWczixGWsRl/MS1S
	 hUDvSg+VKE09jxPfeleiMj+YA/HhNND9FZwjFsaLm2ZiBxcjp8lREZ70oEMsmMsil9
	 gOOYvr6pfdv9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W3md-1JvNHM1; Thu, 26 Jan 2023 15:00:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2E494011C;
	Thu, 26 Jan 2023 15:00:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2E494011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C24A1BF255
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 14:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62157409FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 14:59:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62157409FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p44my0pgoHFS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 14:59:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60E5C40996
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60E5C40996
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 14:59:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328928364"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="328928364"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 06:31:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="805383719"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="805383719"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2023 06:31:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 06:31:36 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 06:31:35 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 06:31:35 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 06:31:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X7zmTlZD0pTCDGYXQOeF3jFrAtPlmWsRhSNvWGbAzILBbuG0CWAxaaanWXxLJfSeDLf1IzkfCNJULJvVHGq4E0h/ExNu4JaohyAIWCudaBWPpP4k6cdDBTuFlc0fLho0I1qx0c+2G7bEdND0E+sMcZwjpLjf+K3Xal79QlVSavFGqd3rpc5GTKVeAGPEYsmaBu0fpqKLy3PinLkI/jMj3mFYKSPf8uUKqhirifaqwEtEu3KMal3fRMuiWLT4g2yOH6b1dEKELt4rLiPAbzEpZMzF42tu1GUIyuTYD7XRq/a/EXuo3R3z5FHwdJ3D88iwIL4SE2SrrCP7YjNkQXUvHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7I1s9admZzQ/5ZISYTpL4HNou4f0V+h2TcRXdDMHmjo=;
 b=PIM++5Z/VC1VxdUV1hQ1DR1V/Q+D5SZ4btVxgXRgTJ+XcdnDq9/yB+D+9Z9XVpF3EwKe8XfVuH3c7jOhHOCW+7p1gpBQV5ImZMsNK8ngEkWBNYz+Ee/lQ5amhFeVbvXbk0hUdH4g8Tdh+RuOgG5JneHj+3Bhqs1adCvD9E8jVcf8mUNky6VyJvGb63KMOF2fJlX3RtyZJGTU6VvRKPFMX8yxL8ZghbKH+0hG8z9UhlvYV69/xErwUxmvIVhPiOIvbgpj3aZdfBn+gakzp6sIMpR9i/Dz1Kz2IINjXitAjI0kE9f0C7jfhZ5vpiCuldrERLPYhk9iqK0WalQPtdHbxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by SA2PR11MB5003.namprd11.prod.outlook.com (2603:10b6:806:11e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 14:31:34 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%8]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 14:31:33 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix disabling Rx VLAN
 filtering with port VLAN enabled
Thread-Index: AQHZKpA4fp8u67TYVEqjqMqqCI3jWq6w0Hsw
Date: Thu, 26 Jan 2023 14:31:33 +0000
Message-ID: <CY8PR11MB7364A9E06ADCA11FBB7BE486E6CF9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230116123458.1107114-1-karen.ostrowska@intel.com>
In-Reply-To: <20230116123458.1107114-1-karen.ostrowska@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|SA2PR11MB5003:EE_
x-ms-office365-filtering-correlation-id: 9600ba25-0ab6-4839-7141-08daffaa060e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jkhhd3jWzb6+Rxr5MFO4PB8rDm0KjIBOeIoqQTgWRNEbeW6CShuN9hx4FmKI2gUbQnf09+F+tD5i46nLPSegujbviywZNOBL9/3oUzN68LcmKX4qd2V86x9GfDNaJH/qiAk7AW4ygD6L/wleaLpuS8jLvKKfNFtg2TlgN5YR4rvpHyf6wUmV3uWNjyII1Qj0mbxIc3NEIsirs+J3aUMTgFqUy4ETey8QEej2lxi0y9HpnCWPc7c5gAV+NicgVut19J3aGq4G3RpEx70saOTAwVPZ29atw7yWEX3ucQkU1pARrgkhOIbMCQcmQ4K6Ei3QOI4jUbjDOW1owm2yJeP9V1o4QeTf114RBX0LylWLthqNxEietATPK2HjVrbTVqdqBo5rb1lsGTx7BVIz3Z7x2ISq9hZVC7ZMGJXbPEqFzwQmsvf/kDgK6ihM+x8H+tfdy+o8wtkvMdnrNF3Xlsr87yzsIUa15+efbDkL+kmt7tNUKz1FaaPxWJe6k6Xc8eJcS5HQSbhWsDgtLXw4ja6T2zj9Q5BsXCe0JHxdsHC7Fzj1E7GnkkrzWn5v8N6aQ6OZWpt+X0tjN3d9VTWvzu9l8OEDcDfcJpMJzOecLBLyAW4/vuyorvgVRq/ZO3uKirAa/9EgDQvTM+QI0zedE0oF5c953az0GmNb3+4om8AG3w4NgAyQVpY35Rjqhd0IUsOa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(346002)(376002)(39860400002)(366004)(451199018)(41300700001)(52536014)(8936002)(26005)(66574015)(83380400001)(33656002)(55016003)(86362001)(122000001)(38070700005)(82960400001)(76116006)(71200400001)(66446008)(7696005)(66946007)(66556008)(66476007)(6916009)(8676002)(38100700002)(316002)(64756008)(9686003)(186003)(478600001)(53546011)(6506007)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?fHB0QRFEMG5jA80TYCWfIcB2upUlSfgFlTe0zpP5MKSfN6dqBOAreSSCxj?=
 =?iso-8859-2?Q?vbbj2U4VGeDNhQohhTph35N9TVCqYyeWA9mpOs9Bw7TyiJGeEEFXD4aihC?=
 =?iso-8859-2?Q?Ts7n+Iw1IvGkr9RUwRbaLL7RO7Qv6ckTkG9AM9X6NDGD/HTnapL6nq9nyi?=
 =?iso-8859-2?Q?+fo8Ej/bXIu/NygX6CqX4mr8Exgo5Zz5VlK4v5TjgI6lPQhX5ObBJqVR4F?=
 =?iso-8859-2?Q?sSuLWc1Vg8NsBqwQ5xDGQPO0jDqfJDVkVNEcxVTOTWJ4xYcBnGkgPQCjF/?=
 =?iso-8859-2?Q?wmPv6cOA11mX4vHTNHiEOqtdsQ9Eb43BfrUhm5GC2pNawuHkgKDhjqx/tK?=
 =?iso-8859-2?Q?phQrmtZUxEadRJChHmPbZ+7J2gtvNPWjXx9P5GXQfr4KKPhHieubpQTfVM?=
 =?iso-8859-2?Q?/Hh6xlLIZqo0hgUwftXSlolVtFtmtLe3E+ukZXwZzkyONnQETepz7OCl9r?=
 =?iso-8859-2?Q?X6ki+kCM2TwqaJ9oXYzoO7TFiYwZ1jyLTvRmeOPONz2Jo4nkKJfkAgGUCk?=
 =?iso-8859-2?Q?lcVFwYlpYZEZmjpiCU+EQm69kd6nnsztkk95opZ6lpnhlXgqiSIo6J8+Ew?=
 =?iso-8859-2?Q?rG+w6EU1KAu8tQxrLQsLChFdmIllj1U1GpfPl9I1rU5iOHjt6l65U1EWw/?=
 =?iso-8859-2?Q?OsIREKMLf8BmQKcoEe4jJ+HZN5zl0R9BKUKKSIu+9MrTO+YGjELdN7HPOh?=
 =?iso-8859-2?Q?3jA8u1c7e8r+H8mmY6G7vgDVWLyorpHKDFURScFd51cEWI1Z0haZEetTd/?=
 =?iso-8859-2?Q?YjS8gk/bdR2OsXSzBeVJ8RkfBWJnPkykAtkU0YN3Hn7iwbYIyg7ASghTP3?=
 =?iso-8859-2?Q?zJwNz8yX2FgqXnbURgwi5xHAv1cm0x8WVueHA0dUBe2BknQfCHAZM9M4xz?=
 =?iso-8859-2?Q?5BuSGoI3+pni/+CZ865syQ8MHazCeD7t2m6fs9rCCdP3N0KIm0W0rS4LLr?=
 =?iso-8859-2?Q?3RJqUCwcia/TOrzBTmN4xkbGg3qDZTHDn3fw4SEte+SVM17v+It6YjB6e4?=
 =?iso-8859-2?Q?R+qCqMVB/sbXTGK5+i98HwURWy5kfuMwN5UoH4gX6nVqAxhBGgFt0wCmvY?=
 =?iso-8859-2?Q?ooV/QOdXnwf3ZZIi3OvDJV5KUwuKa82u/0k4D3RMcghI28AY2tgUY3wBI4?=
 =?iso-8859-2?Q?cWvZpOFpqStd5tr7iPqregVjUETQCuzRMKLkzIu0ukJOBvk9qv5RCPAILl?=
 =?iso-8859-2?Q?vtAaapK2K8HDAklG9MpzYYJ9bWCMiA2sJOeWKuByX/jP6IueIK3P8+dGdM?=
 =?iso-8859-2?Q?0Oi4U6DaWK7KHoC7/zsI9aHndwYP2UpHr7sfUBAmyd6h2S4x6Hk8kdHAc7?=
 =?iso-8859-2?Q?n/9becJs9ZkAy3lsKWC25ZPEsp+2VDvwE+qGcFth5NSm29en+ZIujxk9/3?=
 =?iso-8859-2?Q?geX8fGZkdTLXuUk1VIIkGwI89BdiFkvbrLW2z3cYzPO01muW4pa82KgqV8?=
 =?iso-8859-2?Q?9fLNRUsiTvQ27AWc1WpaXCOacc1kqWN9/hlKIYp3p3r6E/VFFwR+HJtX/a?=
 =?iso-8859-2?Q?vU0NHMhKXQD4KeOmDE97P5ysLmcUjQf13tBf3KZWiHJnW1Euc7izsUFW0F?=
 =?iso-8859-2?Q?qva0p7Gr18ekreUPNujlyRmoV9zr0e3PL3115hBFXdpw8FzcJE0TV8d7Za?=
 =?iso-8859-2?Q?7EuNy7Z6uXYf+YJXX5fkwwQr6k7SGb1Wa/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9600ba25-0ab6-4839-7141-08daffaa060e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2023 14:31:33.7166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ADU8dfLyIqZPdmFQnw09XpS6pwisSZ8/gDjTTGYaw2acnnqQ4dsV/J9Vn4OV0Ul/Vwyz4XGuMF5El0yM4jntxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5003
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674745195; x=1706281195;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UYUtj8sCXGfWMJw1R/jCgMhGd++VJUn+4hbczx9/Sio=;
 b=UpFo6vAOe6QQO/2NiPsNkKk15I1IOIlK6EksFC7pqmFNGhCFBFJ5uNz+
 N3oUeF3UhsTCz8P/sCoAHxNT1YoUzAXL1ek+7WOA8Mo1f74Wj/smRWTBw
 TTMktCOd4BYjx8O5vNjZeY9Edj3yk5xjJhj8UqRJ+3nE7IP0AxiZnWif+
 hL1fD4pINGBAmFMElb33TIwZLjtRplluCmKhKKkxRb1Bxjtr6W3dWfb9l
 Lm2f32RJQV2s2wCtG5Z1Ti6dlxbhOFpkYLa1Y482w1+gwPmc1a1Ebj10a
 NcbaNmYzJ2QktqbnslaFiVIH8Jt7F7k3OPSLNw7SwA6Gl/UDoH4iUuvkA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UpFo6vAO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix disabling Rx VLAN
 filtering with port VLAN enabled
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Ostrowska
> Sent: poniedzia=B3ek, 16 stycznia 2023 13:35
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ostrowska, Karen <karen.ostrowska@intel.com>; Brett Creeley
> <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix disabling Rx VLAN filt=
ering
> with port VLAN enabled
> =

> From: Brett Creeley <brett.creeley@intel.com>
> =

> If the user turns on the vf-true-promiscuous-support flag, then Rx VLAN
> filtering will be disabled if the VF requests to enable promiscuous mode.
> When the VF is in a port VLAN, this is the incorrect behavior because it =
will
> allow the VF to receive traffic outside of its port VLAN domain. Fortunat=
ely
> this only resulted in the VF(s) receiving broadcast traffic outside of th=
e VLAN
> domain because all of the VLAN promiscuous rules are based on the port
> VLAN ID. Fix this by setting the .disable_rx_filtering VLAN op to a no-op=
 when
> a port VLAN is enabled on the VF.
> =

> Also, make sure to make this fix for both Single VLAN Mode and Double VLAN
> Mode enabled devices.
> =

> Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops
> implementations")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> index 5ecc0ee9a78e..b1ffb81893d4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
