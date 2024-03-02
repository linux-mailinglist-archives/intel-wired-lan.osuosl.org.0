Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC9F86EEA5
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:39:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E7E3418F1;
	Sat,  2 Mar 2024 04:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iy1AGCUE_ZGI; Sat,  2 Mar 2024 04:39:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC91941FA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354365;
	bh=+eAfSeAxNmMjG7YichFSPDmq8aDerNSDPXJhKrI5j8U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SQEuFzFEMNiJAorkYhlAkzQ+uiwQqx3+plKa88ASjCp20SVx+aalhFUwxcttQw5xE
	 q0GPgvw8VM3y5lt2aRntA0XOflLRCjO8BqccBGOT+e7nkj28I0ZfEdog5OwNfWMfe+
	 C87/Sib1dw57NU9yWa1xWE4PYd8gwKE5CbfuzekS0Yoy52Ojuiz/22DO7FW9pkC2cU
	 VlPlKU1QbebyNP7c+eA3jylYrz07jCmIENIDXa0ugl08o6bl85Y+f+9/1xpZy8BORx
	 JTB5iWCmqnePB/plWCu6eJLtZNgNOtd0S/qo92mG5rew/1kGbpd6Jhlj+E/Pu6/lGP
	 TWjF358wlMorg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC91941FA5;
	Sat,  2 Mar 2024 04:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99FD01BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 920A941FAD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CwMxrKKl1v6b for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:39:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CEFCF41FA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEFCF41FA5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEFCF41FA5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:39:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3759946"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="3759946"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:32:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="8777097"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:32:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:32:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:32:12 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:32:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZQSNL2aeKQZh7z34riT7iGyPdQwnkjZUPLbzGRLC32clkXjBpObvwfOv5isgMCFiejD395WVnbSToBIo4g10TJtRea/K8rHrEYpULMO7OkCWqY0Oanw93Qx789WWUB/86biU2cUXJk3AESPhlJxw5fuzwWNb/+DUZ7OS/rBV+/M7A70mk1Fzn4IYwEUm90UbFF6BHWYpQJUxT7QaQUYClQGI3Pmoh91ePMuHXLBovkuna8l86nRkpIjzMPv9Wx4bfQ+2t/V6vtuUGVD8GHRunhgLnr+7RJbCDtqLvZEBqCiq0CsRbOMyczCK2ccY9qmqgEq5v3i9xrlZU88Oek2Ojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+eAfSeAxNmMjG7YichFSPDmq8aDerNSDPXJhKrI5j8U=;
 b=UG0wJPi66rsEApGxBi1X/nXo4n8vaw2UVaIFmqZLYSgy36Tv9JSPahieCOLWP7fWl1fpXx4H5Kk80rnKM58zvEVsBc/mjp6+JLD/U9CKlaErRpKu5j62QulLtWbDYETqJlWNV51Z0n2Hb1cH9eXHjJ3RuM9FlGMN1p6ndNyru2niAVXWx50M0lBAybXWWC2dBz32aZPIqk/B4uPyFUaDvx8lC6/QXFxKXCcU9Fnz1mox+Lb+SFCUHSCRGmWosEKhk6kOI1SbmnqVwOAWD38MJZLvTwma5edj6B5fEls7H63jhYdVzvVvHBj7uV6pMa15pwYH6paid8M5q1vkGHX1Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:32:07 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:32:06 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v6 01/11 iwl-next] idpf: add idpf_virtchnl.h
Thread-Index: AQHaZcItmlWABUcYPEiqFM4x/qhkSrEj57Ow
Date: Sat, 2 Mar 2024 04:32:06 +0000
Message-ID: <MW4PR11MB59118A946F5BEA361AE4D6C5BA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-2-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-2-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: 2ade54bb-f65b-4929-468e-08dc3a71b76b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qPvD16+7VylVvO5m8ROD4LGpYUzJnfd+tO95LosAryEeu8gL6SeuCmhvjGuXXxx6FS3vpX0ndOugon6H3yqYFgTjQKV64gMWh7ABik/CP8BNnV8QP2sNqN+FKFvLK+e5gLlxenAqrq5MVQi0pHic1SQOonoRryL4OvFuiv1Lx/wNFWplsGjnKv7g1C6Y5tNKFlKg5+Z3jOCNqT1icCKH8PiGeglco8eGr9vy5iX9rGgcfXRVm+HNNf5RHDif3R1JGB60pgMe8tzyOvvra1cmIbywZUcE1LqChwNAF3WZkNMFcUC5Q1OUIXKyl7aYxHvUWgXEXxoR7D29Z1KrZpZ7UPYNhkOq1J3mdrNGSKiLPJsukRYmo1YebcCeqrKTnw8snyq/0TkmhzUNRWLjFpuGf7F07ofO9x9XeTRn/cV3Zdn2KKEWcdZ91GjWjPCLY8+C+hnbqER7KcFyAO1eZOndPySr8HpLtqRWWO+Qx5t/kou2lZs3X9nGZZzcbHCzQfLci+bXZDv71T+avLH6EKanvIW4M/K82wiu+BkI7FSBqKOmRsduUYI6EGjQ6iEBX68LcdrPEG/aJSvj3pynvR7NhLv/9RSMhbibzzWWML9LUMk7TKIgZkl/kWqkEPMAnu2xJGXft9AnfYvmnG6mW/SHYWi7eOCkxIqOMklWF7zoxYCMoMWrpClkZxyxNSYSvsEdomCZqneNBU0PpCDDGcfnQwtt26seC3oH948SGvtEgYw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q5EbnNHE/P2TplzsWJHUZd/1E2qMuYhFwsNvZivPXlvqC3ybrGop0+znuAbu?=
 =?us-ascii?Q?nFI0N3+tP3/EbK6ODQ1IOBVaer7dl4pKcfudWs4Wor4jifjJv0p3F8m9BDQi?=
 =?us-ascii?Q?nIGZUrQBhEzcqx9hnEaMWBWyXhoOsaVXi/jk7bhka12ywWKNkQ3IzPif04BB?=
 =?us-ascii?Q?BTiNeoFD/MG0cJ1E8Yz0sJdVhWMxXTaiaRodhN3XEbTfLa+n5GqbG1SJJexT?=
 =?us-ascii?Q?tbP8SQ8ukyJ0BYFmUxVJGoAKW5o/3nTVh2pezSuxp3nqJwpmUFs3s4AT/jp3?=
 =?us-ascii?Q?X3+08jU/B6ftW8eL5w+C/vtciF/ZnHGGCPitLpXlpRzw0vw4hLfUFuLwi/Ka?=
 =?us-ascii?Q?DJ0IeSxlysMvn0BZrVqbB6JyTmkYuV0LYOwPCEEm83ln8ypHhwzKJlz6Su9x?=
 =?us-ascii?Q?k8almI5M9l+2h4Larz9ZkYCorLTI4Hmmvq0fZhRFUNdZq3KR+OLd8jsMrnwU?=
 =?us-ascii?Q?1+Ssk5N+RHz3mvCu62gyLV8G8KZn2+RUM5bElvdpu2s6lWlQeovbJW3AZ+CV?=
 =?us-ascii?Q?yxsUWd0sfQKxNlvymSBlvW1HI7W8gd4P+fIrwo4xI64fHgod43LspgcBU9w6?=
 =?us-ascii?Q?wfNPCMFKbF3lQxP1WruM0ULAiQEqkEK++jy12IOOcNEKey8iwdiCk7SJ+S2x?=
 =?us-ascii?Q?3hve4ahhbr9e96+uipWswYIu4V3mUXknbQUIwqG0YqIT9mTcXgG7HeTjFlj1?=
 =?us-ascii?Q?4rJc4GjUDNQInqIlJ6XEt9T4NLM+lhxEQusI//8puHEhrMrI4QBdi4Y9FiVD?=
 =?us-ascii?Q?SVs9WtmcRDg4iMr32SgBMp7LfxFMlpKunHutYyXDEN3shJmiNmd7HgC2e3EJ?=
 =?us-ascii?Q?lGJmpEhEza6xcgNjKrXQsiExmlZbP+I3P4vq/pIsiXuG2krpwtTZJVN4p95L?=
 =?us-ascii?Q?4MRJDgImjwv8bLIKl20taZRU1wLPyTlugD7IvnjdcwSDY3PlrvD/f8nIw4lW?=
 =?us-ascii?Q?JLyOAGVvTOHTF+Ex/bDVoHELq7JCdiU4Lh2H18DIGf18Yx+rN2icdifsWMno?=
 =?us-ascii?Q?Swy8Y1vdxhgw7rsCjEzmOFD2opyg4cWLszEynJFJpmmF6l8Gd/FCtNhz4RTb?=
 =?us-ascii?Q?rjRYVp+9g2KVxMYdO5MSH8KdzKGdixBcNJox+AwLZ/56HK3Oo+9CDYlWHVBZ?=
 =?us-ascii?Q?tMN+dM6IU2XbSonJKFpAKDnvev65vTRgbxF/yBL5GYIq4SBjjxwMVc3+L7x8?=
 =?us-ascii?Q?HPGWjkjsJQvOKjujoMrbyoCCFKgapsGYInuL4TgA5eMmihbRn2vqGJneGvB6?=
 =?us-ascii?Q?ZS0GqpprI2gzlrhOehgwHCNkGRwZ5Ii0U1yquXsL6yONMcCmWjAj1ipxFqhI?=
 =?us-ascii?Q?uqJfQ41X5byD9di0tSUCl6xqi/Fr2yjPx5W5B2ctirzNj2aYCNZQcYJHa6UA?=
 =?us-ascii?Q?NjFKkGCYcAF0MNg2F6Qge1WNA1yY1qlzx+GWmtCvI39FrkdbMN6GyByArhF5?=
 =?us-ascii?Q?jwwEHTD1TIZglg7885gBu+hrSSfqkMitvew5S9ERL24aN1WpbCIjzJP1aQRZ?=
 =?us-ascii?Q?A012j8XzhJzp3ifaJNvYG4E9Tl2gw915OgNccPfx+gr7IOQNgwis/vy8NMqK?=
 =?us-ascii?Q?e7AztyD+6lvyxNrkz+up52hgv3HY87mP1NQLBZFYmqIfhd6NQJxB51wtUK+5?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ade54bb-f65b-4929-468e-08dc3a71b76b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:32:06.2100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: coJUTkZoa26qjlAft+bJACBl/u6ykM8C6PbUxIWBvogGw+QBMF1Apri4/UWxziOM/KvzfjP93f+WT9YEuH+WhF1dszfpl0JEL5jnYke4luE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354363; x=1740890363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qUzmBtdKZMfGmYmglZ+HnS6oVjfpkgxMM8REfFWRKhs=;
 b=S93Oj+bznyX5pPTf5jZDDdwRXJCTuweEWw1cedlqieZgoYyh9Dy0kIRJ
 wIHWr/NU2KbsDMWoAEaVHCdDS5ZJEt7I/ev9JnWJHXtuotPk+6wv1D8Lb
 rTca1Qpgh4OS6YOT7/FzAggx/FJbfKfpO0xUoc77uJS2/o52KWyBi8tbU
 o65hmvGjYCfwJ9V6uFvqJz5t7oO1jeEas4Riw3PUvfytwgojsvJod4CbM
 kKhcM0rsbuodn3BHQ9SiPtqdZ2AlyNvVgVl7MLCguDamUA8j1FeFdkoir
 RRwqx1x/QZ7BeOXuS2reE351JxbQr0x7+EMrlbpR2OLmBjcb6CaiOU+ds
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S93Oj+bz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 01/11 iwl-next] idpf: add
 idpf_virtchnl.h
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alan Brady <alan.brady@intel.com>
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brady, Alan <alan.brady@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>
> Subject: [PATCH v6 01/11 iwl-next] idpf: add idpf_virtchnl.h
>=20
> idpf.h is quite heavy. We can reduce the burden a fair bit by
> introducing an idpf_virtchnl.h file. This mostly just moves function
> declarations but there are many of them. This also makes an attempt to
> group those declarations in a way that makes some sense instead of
> mishmashed.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        | 50 -------------
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  1 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  1 +
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  1 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  1 +
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  1 +
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  1 +
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   | 71 +++++++++++++++++++
>  8 files changed, 77 insertions(+), 50 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index 0acc125decb3..b2f1bc63c3b6 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
