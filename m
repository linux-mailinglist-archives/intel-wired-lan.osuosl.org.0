Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A28178215F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 04:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9969D60A7B;
	Mon, 21 Aug 2023 02:28:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9969D60A7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692584908;
	bh=K3ZkweO8IDTJ+pTZ89080fc5TG3rud3zo02uuTVB6v4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BjDZqYKTvROz4lmrCTKAGFRTj7pFCRMJ/nWGNLuX+LYCUXWJEf9rwsBO3e71YiU2A
	 IfhUU8Kbw60amgCuG34JxOsIvUJiuK2K5SQPSJxmVfCT8deuLFfTBgmhlelD7AFPkL
	 aStJkUomnPeZdVztd6vVgf+WOrS3TH5d0+Ruamlk5VV7Dt6fuJZu4rKjljoYqms1tN
	 P00Etn7zD+PjjwtOtRE1Cb+xVrRfgnmM5mRCf7LH+/N72CvTx6HDrvs29hbeIpywcC
	 jsYzORgHXXR2LZk1KSGEbQtUu1k2xaEKfsXOaNUqnFeJpZ9MKxWC041Oy+1WYs/T+k
	 weE2vIcUX57Hg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fn1Yay3IYsPS; Mon, 21 Aug 2023 02:28:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E66BE60595;
	Mon, 21 Aug 2023 02:28:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E66BE60595
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0941BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 32CAA40105
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:28:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32CAA40105
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0uew6cp-iG7H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 02:28:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F492400DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 02:28:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F492400DC
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="376233785"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="376233785"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2023 19:28:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="770785217"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="770785217"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 20 Aug 2023 19:28:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 20 Aug 2023 19:28:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 20 Aug 2023 19:28:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 20 Aug 2023 19:28:18 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 20 Aug 2023 19:28:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ONPrEDsn2qTdEe2Cz9K+YRuQRNOpd0qwhmGvj7Udtzw09h7g52a3/UXnPqVQcbce6RNmhd2Xvjsi89KHhHWBFb5AVAqtnp6fpYZNb2DEC0BaRnNgcvZIHTX3aVd9a2TggJ79IOS1OywqpnjRdhLSn+bMMiE2MYljNUL18QggwiwJJe3ZD9eiXD/O6ZqikivlY3yGkUK7wdiQl1ZIdg8zrHwuCF/odos61kf+JdHCGTo8gsNizZIALh8gc7YwUEyfNZXKQyul29XMuIiLbLMevJVaeOnCV7H9q3Bfby8ddemYB6VTOeJJqPrbIbxdQwPMgKKqbxUB4Lv8+zuFFZMu4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pp5M6RgYQgQqISyyt+hvmfFMLD+PwiWoLVB74eY1ixE=;
 b=NvvfULggshYdd/DElMrwyld1DeCC5demahl9Juq/F2u7ryFGSOW5AdJd8FZLXPy7r843faJ0Nwxyc7SK+5t+w0OcppTloZwel9EUeMgB9dimBYTrhRB3TK0ihkEmQnhjiFXsa4GslM3r/uhNgWBMdH4NGZ89lOXm7UbNGkfPeecoVx0WDQxRJVAW+nLo2S+QcEWaqN+gk6O3OEgis3UU8I5SPffDS0p7K3E1KMlLEMc25JEhZ6/3K3DYo77yn5bA9/Pu0RI2kXaIj4unlRjm1NhMyyDxxSHsr5Ee2r6NwMI9F8g9fmlwfKAVptJ8Z8HQvD4BYA+R+qxyyW87j24dXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by CH0PR11MB8085.namprd11.prod.outlook.com (2603:10b6:610:183::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 02:28:13 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80%7]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 02:28:13 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 00/15] Introduce the Parser
 Library
Thread-Index: AQHZ0O82HGAUKVpf0kCjrC+rnDAoQ6/wZRUAgAOea6A=
Date: Mon, 21 Aug 2023 02:28:13 +0000
Message-ID: <DM6PR11MB372399222D3B25EBF07100F4E71EA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
 <ba8b1093-c68e-a707-8d89-edf7c7f07965@intel.com>
In-Reply-To: <ba8b1093-c68e-a707-8d89-edf7c7f07965@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|CH0PR11MB8085:EE_
x-ms-office365-filtering-correlation-id: d31647c6-e4ea-4c38-c3ff-08dba1ee44e8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kD6gHM0a90dXbZLFTylMAXMkpzyEmpBx2rwOm+l2nXiYbyiSqcTqE05JByuDJdVgOU5wDqr33dR6wseRs2ErphvjEPabrcuv6vkxZ6Mxi4rdUaMNR85QOklLM6BYPNj4lbe4HIgCagWab2ZG/aH8izEL28u4vNBl3vnmWo2w9OP0SjyvE593Dkfsyti905Ilq/avVMQF4kXlVLzZ2rB/Twiww4UsVcxDGO1X6g0v69+RvtACrzwTdXRuI0Nl4sXI6QHBh07MKJeO/7dn+teH1eS7Lab+RuS4K9T9F8RFYHWoVx9LQYhQpXI5aSamdRcZDmNSFi71fqkkyN61Sos6F+Z/lni2rLL8opwY6HjV+HnGgZ2phRqPHAG8Iq4LKUESCODensq53Hk73auYC18zlmu7EcPj97rBoBvOzQ0dVndd/KDTZ3tO8mYEHtf0MDXdTrrdOajzgBnx/D9ClvesRq1ME5hl/SLiESb/KbtbZjyccQkfrSkymv+xq/2AskIn0ikpaR07HXBS4cc+u+c7yMkh2nCaf5d/yIX5P0hv4hjt2T+RUU2nYls+4bSUiKtrTmEKFO8PW/Z47v0JdWK0CQVydamoZYNA26rht/lOrU4jopUkzAwHSH1M418BkbF4ajCYSdA1azZ75Ozilmtk7Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66446008)(66476007)(64756008)(54906003)(76116006)(66556008)(66946007)(316002)(9686003)(82960400001)(110136005)(8676002)(8936002)(4326008)(107886003)(41300700001)(122000001)(478600001)(966005)(71200400001)(55016003)(38070700005)(7696005)(38100700002)(53546011)(6506007)(2906002)(83380400001)(86362001)(5660300002)(33656002)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a1lmK1VITnZtWkdQY3NWUFlPZkQ4YWNJWlZqaGFFMDVPTVhCTFNsMWpKMnlu?=
 =?utf-8?B?MUpNQ2FMNHlRUG1CZkF1TGlmRUhvMnYvUHNDcFRQVHJxWXpyVnNLTlRnbjZK?=
 =?utf-8?B?d1pxc0Q3eXk3ZWgvU2hZQXdIc2Z3bktUekwwREhjUmcxV3hOVi9rYjl0bjdp?=
 =?utf-8?B?WHNKSzJQakhNMmxGOFBZUms4TDl3V1BrdXoxWFgzK3VEMGdMQ3Q2N3NQWjJh?=
 =?utf-8?B?UGgrcDRpcExVTXJRYzFQZ1NTTGdFbGZidGxqZnpCdmw3eUtCbUxYSE1lQ2Q5?=
 =?utf-8?B?TTJncnF4NXhWOURsZGJFNklwVTI4ZDRCM2pNWlcxQTZ1UWhOSEJMenhmQ2pS?=
 =?utf-8?B?bmMvc2Y0T3FuUW1QdDNyVElUMEFBOGh6YkNveEZsdmFRaXRSaVBrRmVmb1NH?=
 =?utf-8?B?UkJMeGpYam5KRzVNSElNNUFqbTA5UlRMd3BFV3ZRUmVBUEpvZ0d3RkZma3Vn?=
 =?utf-8?B?RGM5RTJIaStlVHNWWUNCYm1EZVludW90UWM2VDBYYmlRTkJUWitubFg4UGw0?=
 =?utf-8?B?b3FZdnlKbjdKK2o1U3RidEg5eXdrZkpmWnBoWDVOaVEwcU96Z3d2Y0xzUXl5?=
 =?utf-8?B?NEtEZzg3ZDFIUW9obWFVdEpQZlkwQTdvWmtrMHdCRHdWU2NpQXBNMmptNUJT?=
 =?utf-8?B?Y2x4MXpjTUV6TnNRaEY5S29Ic2RFQngzSnJhYnhCOFBZK1FxT28xUDZ3RTBW?=
 =?utf-8?B?S1BuRU5OOW5WcVVJSGwxVGtWQUhuMjZQUHlXa29xNmxZdTJZOFQvNGdxK204?=
 =?utf-8?B?OXY4ZlZYbXNNMWxnQ3o4SVpJTy9Ta3hRYklyeFVUaitjVHI2NHBxQ1lEUUNx?=
 =?utf-8?B?WDRGeC9qb2M2dG8xbldNUnpQWk81TkNTa2ZTVmF6YnplRm5KNVpxcXFiNGIz?=
 =?utf-8?B?Tmp0SGtzTkgzakQ4RC9uT0VlMjdJNEQ3RVpCeFlKb1ZXTEsrWnd1M05ldEE5?=
 =?utf-8?B?cm9tTzlzY1pldmZiSHFrNUx1S3llU0FFNGp2Wks1YS91ak5tVStCbkVpM3lr?=
 =?utf-8?B?cXZqNjF0aTJRREtRVmZKdTFEeVNkV1dIcCtJTURzU21YWjdobGNaaVBZMGNE?=
 =?utf-8?B?N0RYOW5SYm1xWFJUN3U5KzRBeHZYdUFiUEVMdVpQd2dERFJtcU5kbUkzYXk5?=
 =?utf-8?B?Mkg2RVB1dDNpemh4bFVMNnlvQ1JTZVJ6TzlYKzBTTFBBNXF1SkhZWndnbWpT?=
 =?utf-8?B?cXZ5Z3BmRThhZ09xTHB1dHF6QTRLdWxlMGVEM2xNWjR0S0dBd0tzSU55N1I2?=
 =?utf-8?B?UEdQOUxNMmxsd2wwRzNpVGltckh1a0VpbzM0WURudzlpUnJpVERRQXVoTzBt?=
 =?utf-8?B?aFdhRWNPZDZRS3VxRjBWZDRUcmk4VnpqTllNSXYybk56cEJYNy9qR0pWcC80?=
 =?utf-8?B?SmxSODd3dTY2YjJ3R1h6OW5ubi93YkgrYUVEakM4RGFralB6YThJYm1pL25O?=
 =?utf-8?B?NjhxQ1QwTmtyZVNGV3hSTS9lYnlqYkxjWTdJRmE3MzIxc3NoYzlpSGpnR2Ex?=
 =?utf-8?B?aDdLSEF1ZWRYTGRwQW9MNTVtS2hZV3N0QmxCL3VWcnh5bjNJNFl6anVVem9X?=
 =?utf-8?B?MEtoRmdaNUtuQnJWdzRzR3AxTkxtUVcwWEpXOW9ESjVlc2l1djRVL21oVmJq?=
 =?utf-8?B?bnU4MGhKTXZtdWhRK0JzZENlcStzMERpbHNKaVRqd2dpeFV6UWtzalQvdFBs?=
 =?utf-8?B?dVN2REpkMlJSV0t6TUtpa0NjN2tDckw5RVFZK09nTWkzVDhpWEJpQnZDTTVU?=
 =?utf-8?B?anlQZW5kSDlxQ1BERjAvTXBnQnN2c3oyRjJJTm5uSTl2NjB0Qi9McldYdThX?=
 =?utf-8?B?cGFhcndrZVR6VnQzSExrc09ud3J1ZktEbUNQK0lwQ2ZBV254cmNheW5EVTcr?=
 =?utf-8?B?SW00L1NpZWlpa0FtMHpFNk5OdUFwL2xVVVBuUTNmdnhuTjRiS1BiYlhwc29F?=
 =?utf-8?B?aVZnQm1jcXZDRUt4endsR2ZOZThCK3BsMTR6K2FLY0tMV3g3UVBUVDBZeWR5?=
 =?utf-8?B?VkRQU29DeHRrQzY3N0NLQXEwOWxuN252S1dSV1llWm1WbjhxRmhnVjhhNVh2?=
 =?utf-8?B?TjJweVpZNUQyWFJxam9Tb1VNd2FSaEI2Si9DRVkzWDAwRlZmbEJrSURXKzho?=
 =?utf-8?Q?DbHvU4WwI6nn0BGlYOb1gNoav?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d31647c6-e4ea-4c38-c3ff-08dba1ee44e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 02:28:13.2932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KQi6ky5DloipO8nZQJY+1iPxTANRPFPFEye9nJBfSRrAtiDv4x88EMHXLFjwj7PgjxJ3y8XFmGBTa1qtLBBAdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8085
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692584900; x=1724120900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pp5M6RgYQgQqISyyt+hvmfFMLD+PwiWoLVB74eY1ixE=;
 b=l47OykwJT1vYEaGuctY8L6ZtCKc8vW7P27idv9rxGEHK/smPkplyoa0b
 aK+IV9BmFkrLhW/2kdnxYN2Xg78gTnIcPFK8Djl87XGbPAYaOcEL790Ji
 5TDvQzkFoaU+9G+IYV2ZiiR1orl2s1zpyPOLAooxVR6hKSHVYWxIhKpj7
 xO0/ZSX3AeHfZuzb2iPFxlOLxRnMclPkGV6a5cPTBA+fVS0guDkrTr20K
 NAm1DMiEYtwfmmQWeWO4bYMpS5NHvmHCZY+8bkxImE6KvSYItry8kGSLA
 0dZ7WHQgKD9KSEtaryeSUifeAKMuFaDBgx6yz+ftM9G5bVNISZ1sg3clx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l47OykwJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 00/15] Introduce the
 Parser Library
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
Cc: ivecera <ivecera@redhat.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBTYXR1cmRheSwgQXVndXN0
IDE5LCAyMDIzIDAyOjQxDQo+IFRvOiBHdW8sIEp1bmZlbmcgPGp1bmZlbmcuZ3VvQGludGVsLmNv
bT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogaXZlY2VyYSA8
aXZlY2VyYUByZWRoYXQuY29tPjsgWmhhbmcsIFFpIFogPHFpLnouemhhbmdAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0IHY0IDAwLzE1
XSBJbnRyb2R1Y2UgdGhlDQo+IFBhcnNlciBMaWJyYXJ5DQo+IA0KPiBPbiA4LzE3LzIwMjMgMjo0
MiBBTSwgSnVuZmVuZyBHdW8gd3JvdGU6DQo+IA0KPiBJIGFzc3VtZSB0aGVzZSBhcmUgZm9yIElX
TCwgc28gaXQgc2hvdWxkIGJlIGl3bC1uZXh0LCBub3QgbmV0LW5leHQuDQo+IEFsc28sIHBsZWFz
ZSBjYyBuZXRkZXYgb24gdGhlc2UgcGF0Y2hlcy4NCg0KVGhhbmtzIGZvciB0aGUgY29tbWVudHMh
DQpXaWxsIHVwZGF0ZSBhY2NvcmRpbmdseSBhbmQgdGhlbiBzZW5kIG91dCBuZXcgdmVyc2lvbiBw
YXRjaCBzZXQuDQoNCj4gDQo+ID4gQ3VycmVudCBzb2Z0d2FyZSBhcmNoaXRlY3R1cmUgZm9yIGZs
b3cgZmlsdGVyaW5nIG9mZmxvYWRpbmcgbGltaXRlZA0KPiA+IHRoZSBjYXBhYmlsaXR5IG9mIElu
dGVs77+9IEV0aGVybmV0IDgwMCBTZXJpZXMgRHluYW1pYyBEZXZpY2UNCj4gPiBQZXJzb25hbGl6
YXRpb24gKEREUCkgUGFja2FnZS4gVGhlIGZsb3cgZmlsdGVyaW5nIG9mZmxvYWRpbmcgaW4gdGhl
DQo+ID4gZHJpdmVyIGlzIGVuYWJsZWQgYmFzZWQgb24gdGhlIG5hbWluZyBwYXJzZXJzLCBlYWNo
IGZsb3cgcGF0dGVybiBpcw0KPiA+IHJlcHJlc2VudGVkIGJ5IGEgcHJvdG9jb2wgaGVhZGVyIHN0
YWNrLiBBbmQgdGhlcmUgYXJlIG11bHRpcGxlDQo+IGxheWVycw0KPiA+IChlLmcuLCB2aXJ0Y2hu
bCkgdG8gbWFpbnRhaW4gdGhlaXIgb3duIGVudW0vbWFjcm8vc3RydWN0dXJlDQo+ID4gdG8gcmVw
cmVzZW50IGEgcHJvdG9jb2wgaGVhZGVyIChJUCwgVENQLCBVRFAgLi4uKSwgdGh1cyB0aGUgZXh0
cmENCj4gPiBwYXJzZXJzIHRvIHZlcmlmeSBpZiBhIHBhdHRlcm4gaXMgc3VwcG9ydGVkIGJ5IGhh
cmR3YXJlIG9yIG5vdCBhcw0KPiA+IHdlbGwgYXMgdGhlIGV4dHJhIGNvbnZlcnRlcnMgdGhhdCB0
byB0cmFuc2xhdGUgcmVwcmVzZW50cyBiZXR3ZWVuDQo+ID4gZGlmZmVyZW50IGxheWVycy4gRXZl
cnkgdGltZSBhIG5ldyBwcm90b2NvbC9maWVsZCBpcyByZXF1ZXN0ZWQgdG8gYmUNCj4gPiBzdXBw
b3J0ZWQsIHRoZSBjb3JyZXNwb25kaW5nIGxvZ2ljIGZvciB0aGUgcGFyc2VycyBhbmQgdGhlDQo+
IGNvbnZlcnRlcnMNCj4gPiBuZWVkcyB0byBiZSBtb2RpZmllZCBhY2NvcmRpbmdseS4gVGh1cywg
aHVnZSAmIHJlZHVuZGFudCBlZmZvcnRzDQo+IGFyZQ0KPiA+IHJlcXVpcmVkIHRvIHN1cHBvcnQg
dGhlIGluY3JlYXNpbmcgZmxvdyBmaWx0ZXJpbmcgb2ZmbG9hZGluZyBmZWF0dXJlcywNCj4gPiBl
c3BlY2lhbGx5IGZvciB0aGUgdHVubmVsIHR5cGVzIGZsb3cgZmlsdGVyaW5nLg0KPiA+DQo+ID4g
VGhpcyBwYXRjaCBzZXQgcHJvdmlkZXMgYSB3YXkgZm9yIGFwcGxpY2F0aW9ucyB0byBzZW5kIGRv
d24gdHJhaW5pbmcNCj4gPiBwYWNrZXRzICYgbWFza3MgKGluIGJpbmFyeSkgdG8gdGhlIGRyaXZl
ci4gVGhlbiB0aGVzZSBiaW5hcnkgZGF0YQ0KPiA+IHdvdWxkIGJlIHVzZWQgYnkgdGhlIGRyaXZl
ciB0byBnZW5lcmF0ZSBjZXJ0YWluIGRhdGEgdGhhdCBhcmUNCj4gbmVlZGVkDQo+ID4gdG8gY3Jl
YXRlIGEgZmlsdGVyIHJ1bGUgaW4gdGhlIGZpbHRlcmluZyBzdGFnZSBvZiBzd2l0Y2gvUlNTL0ZE
SVIuDQo+ID4NCj4gPiBOb3RlIHRoYXQgdGhlIGltcGFjdCBvZiBhIG1hbGljaW91cyBydWxlIGlu
IHRoZSByYXcgcGFja2V0IGZpbHRlciBpcw0KPiA+IGxpbWl0ZWQgdG8gcGVyZm9ybWFuY2UgcmF0
aGVyIHRoYW4gZnVuY3Rpb25hbGl0eS4gSXQgbWF5IGFmZmVjdCB0aGUNCj4gPiBwZXJmb3JtYW5j
ZSBvZiB0aGUgd29ya2xvYWQsIHNpbWlsYXIgdG8gb3RoZXIgbGltaXRhdGlvbnMgaW4NCj4gRkRJ
Ui9SU1MNCj4gPiBvbiBBVkYuIEZvciBleGFtcGxlLCB0aGVyZSBpcyBubyByZXNvdXJjZSBib3Vu
ZGFyeSBmb3IgVkYgRkRJUi9SU1MNCj4gPiBydWxlcywgc28gb25lIG1hbGljaW91cyBWRiBjb3Vs
ZCBwb3RlbnRpYWxseSBtYWtlIG90aGVyIFZGcw0KPiA+IGluZWZmaWNpZW50IGluIG9mZmxvYWRp
bmcuDQo+ID4NCj4gPiBUaGUgcGFyc2VyIGxpYnJhcnkgaXMgZXhwZWN0ZWQgdG8gaW5jbHVkZSBi
b3VuZGFyeSBjaGVja3MgdG8gcHJldmVudA0KPiA+IGNyaXRpY2FsIGVycm9ycyBzdWNoIGFzIGlu
ZmluaXRlIGxvb3BzIG9yIHNlZ21lbnRhdGlvbiBmYXVsdHMuDQo+ID4gSG93ZXZlciwgb25seSBp
bXBsZW1lbnRpbmcgYW5kIHZhbGlkYXRpbmcgdGhlIHBhcnNlciBlbXVsYXRvciBpbiBhDQo+ID4g
c2FuZGJveCBlbnZpcm9ubWVudCAobGlrZSBlYnBmKSBwcmVzZW50cyBhIGNoYWxsZW5nZS4NCj4g
Pg0KPiA+IFRoZSBpZGVhIGlzIHRvIG1ha2UgdGhlIGRyaXZlciBiZSBhYmxlIHRvIGxlYXJuIGZy
b20gdGhlIEREUCBwYWNrYWdlDQo+ID4gZGlyZWN0bHkgdG8gdW5kZXJzdGFuZCBob3cgdGhlIGhh
cmR3YXJlIHBhcnNlciB3b3JrcyAoaS5lLiwgdGhlDQo+ID4gUGFyc2VyIExpYnJhcnkpLCBzbyB0
aGF0IGl0IGNhbiBwcm9jZXNzIG9uIHRoZSByYXcgdHJhaW5pbmcgcGFja2V0DQo+ID4gKGluIGJp
bmFyeSkgZGlyZWN0bHkgYW5kIGNyZWF0ZSB0aGUgZmlsdGVyIHJ1bGUgYWNjb3JkaW5nbHkuDQo+
ID4NCj4gPiBCYXNlZCBvbiB0aGlzIFBhcnNlciBMaWJyYXJ5LCB0aGUgcmF3IGZsb3cgZmlsdGVy
aW5nIG9mDQo+ID4gc3dpdGNoL1JTUy9GRElSIGNvdWxkIGJlIGVuYWJsZWQgdG8gYWxsb3cgbmV3
IGZsb3cgZmlsdGVyaW5nDQo+ID4gb2ZmbG9hZGluZyBmZWF0dXJlcyB0byBiZSBzdXBwb3J0ZWQg
d2l0aG91dCBhbnkgZHJpdmVyIGNoYW5nZXMgKG9ubHkNCj4gPiBuZWVkIHRvIHVwZGF0ZSB0aGUg
RERQIHBhY2thZ2UpLg0KPiA+DQo+ID4NCj4gPiB2NDoNCj4gPiAtIFVwZGF0ZSBjb3ZlciBsZXR0
ZXIgc2VyaWVzIHRpdGxlLg0KPiA+DQo+ID4gdjM6DQo+ID4gLSBSZXBsYWNlIG1hZ2ljIGhhcmRj
b2RlZCB2YWx1ZXMgd2l0aCBtYWNyb3MuDQo+ID4gLSBVc2Ugc2l6ZV90IHRvIGF2b2lkIHN1cGVy
Zmx1b3VzIHR5cGUgY2FzdCB0byB1aW50cHRyX3QgaW4gZnVuY3Rpb24NCj4gPiAgICBpY2VfcGFy
c2VyX3NlY3RfaXRlbV9nZXQuDQo+ID4gLSBQcmVmaXggZm9yIHN0YXRpYyBsb2NhbCBmdW5jdGlv
biBuYW1lcyB0byBhdm9pZCBuYW1lc3BhY2UgcG9sbHV0aW9uLg0KPiA+IC0gVXNlIHN0cnN0YXJ0
cygpIGZ1bmN0aW9uIGluc3RlYWQgb2Ygc2VsZiBpbXBsZW1lbnRhdGlvbi4NCj4gPg0KPiA+IHYy
Og0KPiA+IC0gRml4IGJ1aWxkIHdhcm5pbmdzLg0KPiA+IHwgUmVwb3J0ZWQtYnk6IGtlcm5lbCB0
ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPg0KPiA+IHwgQ2xvc2VzOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9vZS1rYnVpbGQtDQo+IGFsbC8yMDIzMDYwNTEyNDYuamNlNXlTUW0tbGtwQGludGVs
LmNvbS8NCj4gDQo+IEknbSBub3Qgc3VyZSBob3cgeW91IGFyZSBzZW5kaW5nIHRoZXNlLCBidXQg
dGhlIHRocmVhZGluZyBvbiB0aGVzZSBpcw0KPiBvZmYgWzFdLg0KDQpJIGd1ZXNzIHRoaXMgbWF5
IGR1ZSB0byBteSBtaXN0YWtlIG9mIHVzaW5nIGJlIGBuZXQtbmV4dGAsIHdoaWNoIHNob3VsZCBi
ZQ0KYGl3bC1uZXh0YCBpbnN0ZWFkLiBJJ2xsIHNlbmQgbmV3IG9uZSBhbmQgaW4tcmVwbHktdG8g
dGhlIHYyIG1lc3NhZ2UgaWQuDQpUaGFua3MhDQoNCj4gDQo+IEFsbCB0aGUgY29weXJpZ2h0cyBz
aG91bGQgYmUgMjAyMyBvbmx5LCBub3QgMjAxOC0yMDIzLg0KDQpUaGFua3MgZm9yIHRoZSByZW1p
bmRpbmchDQpXaWxsIGNoYW5nZSB0aGUgY29weXJpZ2h0cyBpbmZvLg0KDQo+IA0KPiBUaGVyZSdz
IGEgdHlwbyBvbiBwYXRjaCAyOg0KPiBXQVJOSU5HOiAnYXJyYXJ5JyBtYXkgYmUgbWlzc3BlbGxl
ZCAtIHBlcmhhcHMgJ2FycmF5Jz8NCg0KVGhhbmtzIGZvciB0aGUgY2FyZWZ1bGx5IHJldmlldyBh
bmQgdGhlIGNvbW1lbnRzIQ0KDQo+IA0KPiBUaGFua3MsDQo+IFRvbnkNCj4gDQo+IFsxXQ0KPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRlbC13aXJlZC1sYW4vMjAyMzA2MDUwNTQ2NDEuMjg2
NTE0Mi0xLQ0KPiBqdW5mZW5nLmd1b0BpbnRlbC5jb20vVC8jdA0KPiANCj4gPiBKdW5mZW5nIEd1
byAoMTUpOg0KPiA+ICAgIGljZTogYWRkIHBhcnNlciBjcmVhdGUgYW5kIGRlc3Ryb3kgc2tlbGV0
b24NCj4gPiAgICBpY2U6IGluaXQgaW1lbSB0YWJsZSBmb3IgcGFyc2VyDQo+ID4gICAgaWNlOiBp
bml0IG1ldGFpbml0IHRhYmxlIGZvciBwYXJzZXINCj4gPiAgICBpY2U6IGluaXQgcGFyc2UgZ3Jh
cGggY2FtIHRhYmxlcyBmb3IgcGFyc2VyDQo+ID4gICAgaWNlOiBpbml0IGJvb3N0IHRjYW0gYW5k
IGxhYmVsIHRhYmxlcyBmb3IgcGFyc2VyDQo+ID4gICAgaWNlOiBpbml0IHB0eXBlIG1hcmtlciB0
Y2FtIHRhYmxlIGZvciBwYXJzZXINCj4gPiAgICBpY2U6IGluaXQgbWFya2VyIGFuZCBwcm90b2Nv
bCBncm91cCB0YWJsZXMgZm9yIHBhcnNlcg0KPiA+ICAgIGljZTogaW5pdCBmbGFnIHJlZGlyZWN0
IHRhYmxlIGZvciBwYXJzZXINCj4gPiAgICBpY2U6IGluaXQgWExUIGtleSBidWlsZGVyIGZvciBw
YXJzZXINCj4gPiAgICBpY2U6IGFkZCBwYXJzZXIgcnVudGltZSBza2VsZXRvbg0KPiA+ICAgIGlj
ZTogYWRkIGludGVybmFsIGhlbHAgZnVuY3Rpb25zDQo+ID4gICAgaWNlOiBhZGQgcGFyc2VyIGV4
ZWN1dGlvbiBtYWluIGxvb3ANCj4gPiAgICBpY2U6IHN1cHBvcnQgZG91YmxlIHZsYW4gbW9kZSBj
b25maWd1cmUgZm9yIHBhcnNlcg0KPiA+ICAgIGljZTogYWRkIHR1bm5lbCBwb3J0IHN1cHBvcnQg
Zm9yIHBhcnNlcg0KPiA+ICAgIGljZTogYWRkIEFQSSBmb3IgcGFyc2VyIHByb2ZpbGUgaW5pdGlh
bGl6YXRpb24NCj4gPg0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01ha2Vm
aWxlICAgICAgIHwgIDExICsNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfYnN0X3RjYW0uYyB8IDMxMyArKysrKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2JzdF90Y2FtLmggfCAgNTIgKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmggICB8ICAgNCArDQo+ID4gICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5jICAgICAgfCAgMTAgKy0NCj4gPiAgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGRwLmggICAgICB8ICAxNCArDQo+ID4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ZsZ19yZC5jICAgfCAgNzMgKysNCj4gPiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmxnX3JkLmggICB8ICAyNCArDQo+
ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ltZW0uYyAgICAgfCAyNzkg
KysrKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ltZW0uaCAg
ICAgfCAyMTcgKysrKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
bWV0YWluaXQuYyB8IDE4MSArKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX21ldGFpbml0LmggfCAxMDQgKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX21rX2dycC5jICAgfCAgNTEgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9ta19ncnAuaCAgIHwgIDE3ICsNCj4gPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyLmMgICB8IDU2MiArKysrKysrKysrKw0KPiA+ICAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wYXJzZXIuaCAgIHwgMTQwICsrKw0K
PiA+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BhcnNlcl9ydC5jICAgIHwgODc3
DQo+ICsrKysrKysrKysrKysrKysrKw0KPiA+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3BhcnNlcl9ydC5oICAgIHwgIDczICsrDQo+ID4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfcGFyc2VyX3V0aWwuaCAgfCAgMzcgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wZ19jYW0uYyAgIHwgMzk3ICsrKysrKysrDQo+ID4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BnX2NhbS5oICAgfCAxNDIgKysrDQo+ID4gICAu
Li4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHJvdG9fZ3JwLmMgICAgfCAgOTAgKysNCj4g
PiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wcm90b19ncnAuaCAgICB8ICAzMSAr
DQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0eXBlX21rLmMgfCAg
NzMgKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHR5cGVfbWsu
aCB8ICAyMyArDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3RtYXRj
aC5oICAgfCAgNDAgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90
eXBlLmggICAgIHwgICAxICsNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfeGx0X2tiLmMgICB8IDI2MiArKysrKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfeGx0X2tiLmggICB8ICA4MCArKw0KPiA+ICAgMjkgZmlsZXMgY2hhbmdlZCwg
NDE3MyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYnN0X3RjYW0uYw0KPiA+ICAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYnN0
X3RjYW0uaA0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZmxnX3JkLmMNCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ZsZ19yZC5oDQo+ID4gICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9pbWVtLmMNCj4gPiAgIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ltZW0uaA0K
PiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbWV0YWluaXQuYw0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfbWV0YWluaXQuaA0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWtfZ3JwLmMNCj4gPiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21rX2dycC5oDQo+
ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wYXJzZXIuYw0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfcGFyc2VyLmgNCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BhcnNlcl9ydC5jDQo+ID4gICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wYXJzZXJfcnQuaA0K
PiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfcGFyc2VyX3V0aWwuaA0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGdfY2FtLmMNCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BnX2NhbS5oDQo+ID4gICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wcm90b19n
cnAuYw0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfcHJvdG9fZ3JwLmgNCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0eXBlX21rLmMNCj4gPiAgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0eXBlX21rLmgNCj4gPiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Rt
YXRjaC5oDQo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV94bHRfa2IuYw0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeGx0X2tiLmgNCj4gPg0KPiA+DQo+ID4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcNCj4gPiBodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
