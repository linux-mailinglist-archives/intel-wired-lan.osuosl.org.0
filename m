Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE97B72B639
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 05:50:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A21294035D;
	Mon, 12 Jun 2023 03:50:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A21294035D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686541833;
	bh=ZmvIZBshA6Bm0MeUfFTnemTlmDJrpMJCRtwS8Ksr0vs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kUNNFTLZglqGIQeRb9Euxx8YLINzVWtS1uoUp2nWmcx1kCjfcAwKWHbPLcYBGkm6q
	 1YtOH25X5Kly1U45yIcCbo5AlvERi0TThZxwTp8yh/73JteQ7uv+mneYUusJL5ySoY
	 kih9vR28rrSNDSQnugM8bpoji5j86J3HngKiy4GRytTQu34K4xof285Ijvvrbc4uLV
	 Z0Q6Z8atJUOA1tZoA4C7XQ/i3un8KWmQe69kZjbkKx/eDVpCY8KiR1EvgGB19OUFgn
	 47gnfO0WL5hBUsgJjy8mpVvDRT45G+OMtnUCjRdA+vCNFmCVPkW88mgknBzF8WolYp
	 4AQf6Ppf0KFMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gsOxdZDC8IFI; Mon, 12 Jun 2023 03:50:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 562E1400C7;
	Mon, 12 Jun 2023 03:50:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 562E1400C7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B96091BF954
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 03:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D42D820D0
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 03:50:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D42D820D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LrYz--gICwAE for <intel-wired-lan@osuosl.org>;
 Mon, 12 Jun 2023 03:50:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8255A820CE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8255A820CE
 for <intel-wired-lan@osuosl.org>; Mon, 12 Jun 2023 03:50:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="337572495"
X-IronPort-AV: E=Sophos;i="6.00,235,1681196400"; d="scan'208";a="337572495"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2023 20:50:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="1041176968"
X-IronPort-AV: E=Sophos;i="6.00,235,1681196400"; d="scan'208";a="1041176968"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jun 2023 20:50:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 11 Jun 2023 20:50:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 11 Jun 2023 20:50:22 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 11 Jun 2023 20:50:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GhLSzQnbhedm6MSLgCnV1JK6AmBg0qVigj3L1LLd+/Qnf+tilGz3iyUHcpVALR5ZPHvaxf0K2/pJwvkCDdFx+h6TJrcwyQF7v2fHu8YRfkpR8siYStH2DYg+aF98dFm0Xad3hRcUHKcMx/JfUXzoHWaBkBUQlA1Tigl6cIlkF11ocWjdKe4/yHAbQ5yzxAiSsFosqXxYQmeaaUL+bShxzW1cH+pHoUiAj7oiisLzHq8Y6Nz4P51G/oJFIXb8YAF0hDYkblyBIT/hRTRUM9PrSmeZoWxu7JvJME39kKcV36ijagwU6+i21m2JWeiKmOU8hqSRWOx+i7CXxbB2spou4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G6dxiwoyR6gPx6QC3aNPxJlrAJIxwdubAhDHKKNO53k=;
 b=j81PtSyh+AXPQzIlrAuHXyORw+uiAj/HGfi2F075CTIXvzhkMgslFKOFXupL7oSC59rfmi9jzThmWSVwFo6AlnCj4AWEs8H0Vb9XiSdQ2Ylmw7FWNhugxEXyZ4W0et6GMpV7t5jCj9sXxwaPEB7EoG/22geNzWK1Z1LzWOULz9kPAH0g3sE7bHEx8HBWGeWC2lbUa/UleySY9RjDAieaZx5IFujtTaExEhIoJ/hFBpeWooFXySQTzpIdMKpxA4TAPDgqwZZlMRDWvXOCypllUw0U6RV0oTV0OBVCs9I9VKHsMnpADeSPGQ+pdSDg429SJ0jVniFONWYYzmiuhqGU2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CYYPR11MB8357.namprd11.prod.outlook.com (2603:10b6:930:c5::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Mon, 12 Jun
 2023 03:50:20 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6455.030; Mon, 12 Jun 2023
 03:50:19 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Thread-Topic: [PATCH iwl-net v3] igc: Add TransmissionOverrun counter
Thread-Index: AQHZlCSRIAJsOJ7ZBUaDwOZZweIG1q991t1IgAToprCAAAqmAIADxntw
Date: Mon, 12 Jun 2023 03:50:19 +0000
Message-ID: <SJ1PR11MB6180B613324BFB5C5395DAF1B854A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230606140230.dyglrbenr3geu3ha@skbuf>
 <SJ1PR11MB61804C9DEFF8D2843E1B10D1B851A@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230609173838.vtki6u5kk6v6gtr5@skbuf>
In-Reply-To: <20230609173838.vtki6u5kk6v6gtr5@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CYYPR11MB8357:EE_
x-ms-office365-filtering-correlation-id: 5f2697ad-6a1f-4c22-98a0-08db6af82449
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: paD3quxl71zJ365wA4+a0fjh8LbfWhtNr8jSjVRrDEL8kz09SNdQXSUYsMfI8TBx++f48WzX4casyNEH4zRb5EALdimhFBe0vh7uBUVqRNXSsj0cOsVqN51BfVBcPWeYWAvnZE8x32ATziXmL+HJc5ESzVL6OBEx3UVxyC4aUZh6FfD79jWhOYKk2uHhshhP5zyP771ZERoj3Oo7HTZ0euLMGTZ33WKgAi5G8fBO1PP7WEkqNEmEeP+wdlfNmHV0z/deCRIFpqaEkfOonq+hQqsIMxBdqkw8MxwmmrkgJpjquhRGcrUI4uuJ+XCq55CSPcVjCo7Lo7B7CNuk/PGy1z5EPwzRJYFDYUFJ+pZQkC7lPxDG+4GUmTT9Wpui803MN/KvdHEX9ugJB72KBjm7JKIWC9JDozZHbghc1r7/v3I7egrJesXxJoqkaJ0d2zedjJyY+ll6xu6peA9IX/K1tOhuI5iGGNMWUg/DQD3JDMfujZf7Mj6x3s20utfS6iNJonB/tOShTOZKoGAoR89BomoXNiXYHLnXde/89/pRmtAjLMuGLxwy8ZHUEaqWApF2L09K5+87JOApFIHQYW8ZEdFf/KzShdcNRTCnMyD4qYZKItvLTdJQspheyETKh7ZLiC25seIJSWK7Z0AZGHSBoOLq+QXz78YItx3lNqVacJ8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199021)(5660300002)(52536014)(8936002)(8676002)(2906002)(76116006)(66556008)(66946007)(64756008)(66476007)(66446008)(54906003)(7696005)(71200400001)(4326008)(9686003)(26005)(6506007)(316002)(6916009)(41300700001)(186003)(82960400001)(83380400001)(478600001)(33656002)(55016003)(38070700005)(38100700002)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dm5rUGRtb3c5Tzd1YXFUemYwNzdCck0rYytuMzFSS0xIZWM0NC9wN25wNjNC?=
 =?utf-8?B?S2NPZk0xMTcvSEhMZ1ZTZkpNTnJrMHRlZEV6VFdiblMwUnRCV0NBeDFYMnQ3?=
 =?utf-8?B?OXV2ckcxSzJVeC9yNXNwTTI4a0d4Tk9KdmJHaGhIS3BlSWlQL3FIdlM4SkRT?=
 =?utf-8?B?Z3R3cXg2RE5SSG1NbkJZZ3RKTmEybVhjeWVYNlRLbU9SVG5PQkZEelNrQVNp?=
 =?utf-8?B?QlBUcmtCMHE5L3NsVU9kVmgvM3N1L0xGKzVoYkIrT25OOG93b1U1UFh5Q1Jr?=
 =?utf-8?B?bkhLak1QZ1BJalNxOW54d2VzTEtEWFl2WUxoc3hqdUdIT0RHSWg4ZTlHWWRD?=
 =?utf-8?B?UXUyaGNxQXI1U0VxWS80SWlUclhVVlpEZVNnb2c3TG80WXNPcU5vRy9STkp4?=
 =?utf-8?B?WGNOVzk1WHh6cVAzY05mYSt1TmlNcWVTdXoyWXE3UCsvK052NHBZb1poQnJz?=
 =?utf-8?B?MnAvb0hpN2RNb3AvWDZFMkd4MVF0aDdLMXZTU3lsdHJ5WG5WekU4YUxBeTlJ?=
 =?utf-8?B?NjIxa3dxeHFxN0pxclV6TXE4M20xUW45dmdRU0dHeWYrNTliMFMwUHMxTXdH?=
 =?utf-8?B?R0dkNENmblA4Y3Vub3pvb2gxRUh4R1Y1VnZhK0J6V256Vm13a3hFdXVHSHMr?=
 =?utf-8?B?dzZ4QzRPcHJ0aWtURG41Ump4d1YyMmVSTjY2c3VmWUl6L3BmRURzTUQ0QUEr?=
 =?utf-8?B?QWJCemswV0lNN1hwK0dHOGVWOFBoUHptbG1VV2ZwWVdKb1p6N0dJUFhONFdv?=
 =?utf-8?B?Tlo1dFZyREZvY3VReVo2c0xJSkFkNzZlK055QUNoTW4xbWh1eldCVHlLN2Zv?=
 =?utf-8?B?VWJpUW1wT0RpNU9mK25UK243TlBCaGVTL3VuSzUveGd4YU44a1R0TENxMlM2?=
 =?utf-8?B?OGw3eXhkUmw2WTgzZVdENE01UzhaRko2c2M2blkwckF3SmlCMUJ6TnNqeS9I?=
 =?utf-8?B?MVp2YmZTUVdkK0g4cEQzaFFXSlZzVk1zOFc2L1YvUUJqMDZIU1VjeVZNNHNC?=
 =?utf-8?B?eHY2TXZnQmFhYnFoU3lOQkFuOUNqL25sZkN1NGNTNEk4Q1VzNEZQckVoM1Zy?=
 =?utf-8?B?Z1NRZnZhWDdjaFZSenIrZGRTRTYwK3dMakVnVFhPZVpZQmV5RTlDYkovY2lI?=
 =?utf-8?B?Z2N4OW5sdXNZR3A2OVVyc25UaFJodGFCN1ZXS3Y0clo0ZFRWZkJZSjVnUWtu?=
 =?utf-8?B?M3p1d1NMaTNQeWp6M3kvbForMEFhWE1qeWlVRGhJczBKeGJYT2VpSllXTXVl?=
 =?utf-8?B?aEN3cU5FVXVNL050MTFhUFBTT29OeG9PZVpNUVVGazJNclVsaHR2TjhFZ3B6?=
 =?utf-8?B?cTJ4ZWtlcG9aT1RIajBOYTdUUlZJU3JHM0RIdTl1bzdjd1JhUFFNdnZFY3VU?=
 =?utf-8?B?VDVJbmNMNzVMZTRwdUlXVHZ1Zy93ZTh4dTNsVG1nTGZMVTEzbG1zSjhaNmg0?=
 =?utf-8?B?RnRzTnd1bGZLaTdDRllGVTVoV0VqTmxsQzV2aXVNMmZ6QVF2b1IwSVFNeUVk?=
 =?utf-8?B?eFZ4enJyS2Qyb0lWZ1ZGZkJNOC9kR2l4U0RndFVOeFdHY21jUFloMDFYbVQv?=
 =?utf-8?B?R0FabnE4a01kdjFqWGlLWXRsTklqOE5aM2swVTVHMVZPdklZaDFNOVhsWWd4?=
 =?utf-8?B?dVRrRnk4dnpvU3Z2MTFndm9YcXg2M2RaaG1wQ1dhcGlFUUc4SVg4THF0MUpk?=
 =?utf-8?B?eFd4VENsWTRsaWV2c3kya2dKZ29FbHA4SHpyWnVHeUxaMXV2eGRzdk9yWGE1?=
 =?utf-8?B?eXhBa2ppcDVoYWdmRFZsa2dhbHlmdSszZHpzZ3UzZldTRkJrQnBWbnRkbTVh?=
 =?utf-8?B?ektnN2RIMGlMZjNxbm9iQ1lZbWNUU1NjZjlMTEJ6VjJpRnlCQjNDMXBpMko0?=
 =?utf-8?B?cUJxZTV4WnZnc1V6OWJoNFJRY0tIcWFvMnFEYk1Hd0hyMEhaVUFNTU1GaGo5?=
 =?utf-8?B?ZHpjSjhCNi9IenJJdmx3WlhaNjR0cGl5SVhoa3grL0g4dlhXQitaQ0U2VUtM?=
 =?utf-8?B?T3ZRZFNJaUM2ZEVVRHpjUlBaYUNBL01WZWhmS2tlMlgyazRqN0R2M3ZNZGJN?=
 =?utf-8?B?R2RIV2NHRnJ5YzdpamZqNXMycWhlV3BIU2p0TnUwL2JVdWpyK3plQVJyWFJQ?=
 =?utf-8?B?VFhsRU9vQm8xejlvdkZCUGVzRUdTZXlwc1htZkducU9lL0ZxYWdFVjVRY2E4?=
 =?utf-8?Q?2Jun00zzyMtfcDlZXL4tZts=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f2697ad-6a1f-4c22-98a0-08db6af82449
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2023 03:50:19.6198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +FNz4ZcUaiV53G93EUz5jWj+DTOpXeFleSIgXPpycY6oHoOIRs5tZjZghlv16VddFGYzN0SZCvX7rlMDT8K4NrsiJijnJw7Nnyr4RJHhIGbcvudHMQQDoW2P1vx/tidh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8357
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686541824; x=1718077824;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G6dxiwoyR6gPx6QC3aNPxJlrAJIxwdubAhDHKKNO53k=;
 b=S+T6ELnNCyXGdxvNlIM2AJQfWFFP7onThGzUqvmynxC+EOeQpHJ6NtxW
 QcWJY/ThyMSRvu0I3qM31C9bTpnInfOr8yPCOl0G4n8pz2zUXq+VR2xdQ
 7wTX78QzFpZU5zAsAqlJ6gQD6/Nr4XZEF1HPNzvVSqI5pSO03N7MgpC7A
 /Rr77lCh3NcvoJDNnPfKAl2+t+FG9GHHGU7VTEvd6kZXmjYPTsmpk6Yo3
 CyTFU6JPl67bNl54Kh+4dbpsD9+osm9quzWHqXhZEwxGcR6pqyPzE8o0l
 UpX+tFX8jSisXRgm+3AfPCs/gP1zihGNkhYr3SsqIXH4rC3iSgiBKeV1u
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S+T6ELnN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBWbGFkaW1pciwNCg0KPiBPbiBGcmksIEp1biAwOSwgMjAyMyBhdCAwNToxMDoyNFBNICsw
MDAwLCBadWxraWZsaSwgTXVoYW1tYWQgSHVzYWluaSB3cm90ZToNCj4gPiA+IFdoYXQgaXMgdGhl
IHB1cnBvc2Ugb2Yga2VlcGluZyBhIGNvbnN0YW50ICgwKSBpbiBhIHZhcmlhYmxlDQo+ID4gPiBy
ZXBsaWNhdGVkIHBlciBUWCBxdWV1ZT8gSXQgaXMgYSB3YXN0ZSBvZiBzcGFjZS4NCj4gPg0KPiA+
IFB1cnBvc2UgaXMgZm9yIHRoZSBDZXJ0aWZpY2F0aW9uIGNvbmZvcm1hbmNlIHRlc3QuDQo+ID4g
VGhpcyBpcyB1c2VkIHRvIG5vdGlmeSB0aGUgYXBwbGljYXRpb24gKGF1dG9tYXRlZCkgaWYgYW55
IHBhY2tldHMgYXJlDQo+ID4gY3VycmVudGx5IGJlaW5nIHRyYW5zbWl0dGVkIG9uIGEgY2VydGFp
biBxdWV1ZSBkdXJpbmcgYSBnYXRlLWNsb3NlIGV2ZW50Lg0KPiANCj4gSSBhZ3JlZSB3aXRoIHlv
dSwgYnV0IHRoYXQgd2Fzbid0IHRoZSBxdWVzdGlvbi4gVGhlIHF1ZXN0aW9uIHdhcyAid2h5IGJv
dGhlcg0KPiBrZWVwaW5nIGEgY29uc3RhbnQgKDApIGluIG1lbW9yeSBzdG9yYWdlIHdob3NlIGxp
ZmV0aW1lIGlzIHRoZSBkcml2ZXIncw0KPiBsaWZldGltZSwgd2hlbiB5b3UgY2FuIGp1c3QgcmVw
b3J0IHRob3NlIGNvbnN0YW50cyBpbiB0aGUgdGFwcmlvIGNhbGxiYWNrcywNCj4gYnlwYXNzaW5n
IHRoZSBkcml2ZXIgc3RvcmFnZSwgYXMgbG9uZyBhcyB5b3UncmUgbm90IGdvaW5nIHRvIHJlYWQg
dGhlbSBmcm9tDQo+IGhhcmR3YXJlIGFueXdheSIuDQoNClllYWguIFlvdSBhcmUgcmlnaHQuIEkg
Y291bGQganVzdCByZXBvcnQgIjAiIGluIHRoZSB0YXByaW8gY2FsbGJhY2suDQpUaGFua3MgZm9y
IHRoZSBzdWdnZXN0aW9uIPCfmIoNCg0KPiANCj4gPiBTaW5jZSB3ZSBzZXQgdGhlIFN0cmljdF9l
bmQgYml0LCB0aGUgdmFsdWUgd2lsbCBhbHdheXMgYmUgemVyby4NCj4gDQo+IEJvdGggc3RhdGVt
ZW50cyBhcmUgdHJ1ZSAoIndlIHNldCB0aGUgU3RyaWN0X2VuZCBiaXQiIGFuZCAidGhlIHZhbHVl
IHdpbGwNCj4gYWx3YXlzIGJlIHplcm8iKSwgYnV0IHRoZSBkZWR1Y3Rpb24gaXMgZmFsc2UuIFRo
YXQncyBub3Qgd2h5IHRoZSB2YWx1ZSBpcyB6ZXJvLA0KPiB0aGUgdmFsdWUgaXMgemVybyBiZWNh
dXNlIG5vIG9uZSBzZXRzIGl0IHRvIGFueSBvdGhlciB2YWx1ZSA6KSBJZiB0aGUgY291bnRlcg0K
PiBhY3R1YWxseSBtb25pdG9yZWQgYSBwaHlzaWNhbCBldmVudCwgdGhlbiBJJ2QgaGF2ZSBhZ3Jl
ZWQgd2l0aCB5b3VyDQo+IHN0YXRlbWVudC4NCg0KSXQncyBub3QgbGlrZSBubyBvbmUgY2hhbmdl
ZCBpdC4gVGhpcyB2YWx1ZSBzaG91bGQgYmUgb2J0YWluZWQgc3RyYWlnaHQgZnJvbSB0aGUgSFcg
c3RhdGlzdGljIA0KY291bnQgcmVnaXN0ZXIuIEJ1dCB5ZWFoLi4uIEknbGwgZ2V0IHRvIHRoYXQg
aW4gbXkgc3Vic2VxdWVudCBjb21tZW50Lg0KDQo+IA0KPiA+ID4gQWxzbywgaWYgSUdDX1RYUUNU
TF9TVFJJQ1RfRU5EIHdhc24ndCBzZXQsIGhvdyB3b3VsZCB0aGUgd2luZG93DQo+ID4gPiBvdmVy
cnVucyBiZSBjb3VudGVkPw0KPiA+DQo+ID4gQ3VycmVudGx5LCB0aGVyZSBpcyBubyBsb2cgb3Ig
c3RhdGlzdGljcyBhYm91dCBwYWNrZXRzIHRha2luZw0KPiA+IGFkdmFudGFnZSBvZiBTVFJJQ1Rf
RU5EIG5vdCBiZWluZyBzZXQuDQo+IA0KPiBZb3UgbWF5IGhhdmUgbWlzc2VkIG15IHF1ZXN0aW9u
IGhlcmUuDQoNClNvcnJ5IG15IGJhZC4NCg0KPiANCj4gRG9lcyB0aGUgaGFyZHdhcmUgaGF2ZSBh
bnkgcmVwb3J0aW5nIG1lY2hhbmlzbSBmb3IgVFggb3ZlcnJ1bnM/DQoNClRvIGJlIGhvbmVzdCwg
bm8uIOKYuQ0KDQo+IElycmVzcGVjdGl2ZSBvZiB3aGF0IHRoZSBjdXJyZW50IGRyaXZlciBoYXMg
b3IgZG9lcyBub3QgaGF2ZS4NCj4gSSBpbWFnaW5lIHRoZSBoYXJkd2FyZSBzaG91bGQgaGF2ZSBz
b21ldGhpbmcgbGlrZSB0aGlzLCBzaW5jZQ0KPiBJR0NfVFhRQ1RMX1NUUklDVF9FTkQgaXMgYW4g
b3B0LWluIGZlYXR1cmUsIGFuZCB0aGVyZSBzaG91bGQgYmUNCj4gc29tZXRoaW5nIG5vbi16ZXJv
IHRvIGNvdW50IHdoZW4gdGhhdCBiaXQgaXNuJ3Qgc2V0Lg0KDQpUaGVyZSBpcyBubyBIVyBzdGF0
aXN0aWMgY291bnQgZm9yIHRyYW5zbWlzc2lvbiBvdmVycnVuLiANCkkgYWdyZWVkIHdpdGggeW91
LCB3aGVuIHRoaXMgYml0IGlzIG5vdCBzZXQsIHRoZXJlIHNob3VsZCBiZSBub24temVybyB2YWx1
ZS4gDQoNCldoZW4gc2V0dGluZyBUU04gbW9kZSwgd2Ugbm93IG1ha2UgdGhlIFNUUklDVF9FTkQg
ZmxhZyBtYW5kYXRvcnkgZm9yIFFCViANCm9wZXJhdGlvbiBpbiB0aGUgZHJpdmVyIGNvZGUuIFNv
IHRoYXQgdGhlIHRyYW5zbWlzc2lvbiBpcyBvbmx5IGVuYWJsZWQgaW5zaWRlIHRoZSBRQlYNCnRp
bWUgd2luZG93cyBhbmQgb2JleWluZyB0aGUgU1RSSUNUX0VORCBwYXJhbWV0ZXIgb2YgdGhlIHF1
ZXVlLiBTbyB3ZSBjYW4gZXhwZWN0DQoiMCIgcGFja2V0IG92ZXJydW4gd2hlbiB0aGlzIGJpdCBp
cyBlbmFibGVkIGluIG91ciBjYXNlLiANCg0KPiANCj4gSWYgaXQgZG9lcywgd291bGRuJ3QgaXQg
YmUgYmV0dGVyIHRvIHF1ZXJ5IHRoZSBoYXJkd2FyZSBmb3IgdGhpcyBpbmZvcm1hdGlvbiwNCj4g
cmVnYXJkbGVzcyBvZiB0aGUgU1RSSUNUX0VORCBiaXQsIHJhdGhlciB0aGFuIGp1c3QgYXNzdW1l
IGl0IHdpbGwgYmUgemVybz8NCj4gDQo+IER1ZSB0byB0aGluZ3MgbGlrZSBjb25nZXN0aW9uIG9u
IG1lbW9yeSwgSSBzdXBwb3NlIGl0IG1pZ2h0IGJlIHBvc3NpYmxlIGZvcg0KPiB0aGUgTklDIHRv
IHN0YXJ0IHRoZSBETUEgdHJhbnNmZXIgb2YgYSBmcmFtZSBpbiB0aW1lIGZvciBpdHMgdGltZWx5
DQo+IHRyYW5zbWlzc2lvbiwgYnV0IG5vbmV0aGVsZXNzIHRoZSBmcmFtZSB0cmFuc21pc3Npb24g
Y291bGQgc3RpbGwgb3ZlcnJ1biB0aGUNCj4gd2luZG93LiBPbmx5IHRoZSBoYXJkd2FyZSBjb3Vs
ZCBrbm93IGlmIHRoYXQgd2FzIHRoZSBjYXNlIG9yIG5vdCAob3IgYQ0KPiBoYXJkd2FyZSBUWCB0
aW1lc3RhbXAgYWRqdXN0ZWQgZm9yIHRoZSBmcmFtZSBsZW5ndGgpLiBTbyB3aGF0IEknbSBzYXlp
bmcgaXMNCj4gdGhhdCB0aGVyZSdzIHZhbHVlIGluIHJlYWRpbmcgdGhpcyBmcm9tIHZhbHVlIGV2
ZW4gaWYgeW91IHRoaW5rIHRoYXQNCj4gU1RSSUNUX0VORCBzaG91bGQgYmUgYWxsIHRoYXQncyBu
ZWVkZWQuDQoNClllYWguIE9ubHkgSFcgY291bGQga25vdyBmb3Igc3VyZSBpZiB0aGUgdHJhbnNt
aXNzaW9uIGlzIG92ZXJydW4gb3V0IG9mIFFCVg0KV2luZG93IG9yIG5vdC4uLi4uQnV0IEhXIGRv
ZXMgbm90IGdpdmUgYW55IEhXIHN0YXRpc3RpYyByZWdpc3RlciB2YWx1ZSBmb3IgdGhpcy4NCg0K
PiANCj4gRm9yIGNvbnRleHQsIG9uIE5YUCBMUzEwMjhBLCB0aGUgZmFjdCB0aGF0IHRoZSBoYXJk
d2FyZSAoRU5FVEMpIGRvZXNuJ3QNCj4gcmVwb3J0IGEgVHJhbnNtaXRPdmVycnVuIGNvdW50ZXIg
aXMgYW4gZXJyYXR1bSwgZXZlbiB0aG91Z2ggRU5FVEMgYWxzbyBoYXMNCj4gbG9naWMgdG8gc3Rv
cCBzZW5kaW5nIHBhY2tldHMgZWFybHkgZW5vdWdoIHNvIGFzIHRvIG5vdCBvdmVycnVuIHRoZSB3
aW5kb3cuDQo+IA0KPiBJdCdzIGEgYml0IG9mIGEgbGVhcCBvZiBmYWl0aCBmb3IgdGhlIHNvZnR3
YXJlIGRyaXZlciB0byBwb2xpdGljYWxseSByZXBvcnQgYSBjb3VudGVyDQo+IGFzIHplcm8gYW5k
IGZvciBoaWdoZXIgbGF5ZXJzIHRvIHRydXN0IHRoYXQgYXMgZmlyc3QtaGFuZCBldmlkZW5jZSwg
YW5kIHRoaXMgaXMNCj4gd2h5LCBhdCBsZWFzdCBpbiBFTkVUQywgSSBjaG9zZSB0byBub3QgcmVw
b3J0IFRyYW5zbWl0T3ZlcnJ1biByYXRoZXIgdGhhbiBiZQ0KPiBjb25maWRlbnRseSB3cm9uZyBh
Ym91dCBpdC4NCg0KSSBzZWUgd2hhdCB5b3UncmUgc2F5aW5nLiBIb3dldmVyLCBiZWNhdXNlIEky
MjUgSFcgaGFzIHRoaXMgU1RSSUNfRU5EIGJpdCBvcHRpb24sIA0Kd2UgY2FuIGF0IGxlYXN0IGd1
YXJhbnRlZSB0aGF0IEhXIGlzIGhhbmRsaW5nIGl0IHdoZXJlIHBhY2tldHMgZnJvbSB0aGUgcXVl
dWUgY2FuIGJlIA0KdHJhbnNtaXR0ZWQgb25seSBpZiB0aGV5IGFyZSBleHBlY3RlZCB0byBiZSBj
b21wbGV0ZWQgYmVmb3JlIHRoZSB3aW5kb3cgb2YgdGhlIFF1ZXVlIA0KaXMgZW5kZWQuDQoNClRo
YW5rcywNCkh1c2FpbmkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
