Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B613C62D842
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:41:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3A47418F6;
	Thu, 17 Nov 2022 10:41:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3A47418F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668681663;
	bh=sMUZLX88hXNGjimq+BbdtqWyt/D6TPsy+xIoqvoXKCs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C7ScTbiEbMSjIIV17s5HikcqAB3/V5obNVB412cfKgK2qE2umJWIDyZr2XwYvjOA3
	 RCOl+bMW5ENposhHI5eZ1R/6iH1f4FzOeJh63QcnEIsJW0TX20XBGEXhms4KT1wur5
	 ORzhin2MdtyM7KXFG8rcDLly4DxQI7E1sX4I6QaY0B75sYflypuifOYAUM6/JyCPb6
	 H1vigfmxWGWpc2v7poyA+v0+DoOCbG+L0oiIaSMVGs1/dTXdgsEF23wAXVRUiKakbi
	 JR83m3HS+4Sj8mtoRVv1BUb7UTtHriPrNfYx0tqAnYOcE7jrm+xlH0zoHK34jg+Yvl
	 FpkL9m1zXNADQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x9YICXWtUFi0; Thu, 17 Nov 2022 10:41:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87159418EF;
	Thu, 17 Nov 2022 10:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87159418EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E5C71BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 078FE404B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:40:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 078FE404B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PS4AZlaAxp94 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:40:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A5F740420
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A5F740420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:40:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="377083571"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="377083571"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:40:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="634012828"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="634012828"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2022 02:40:54 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:40:53 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:40:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:40:53 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:40:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcykODMwo0jvTIdofSMi+1BTVIPmgfvVg/JBJheV6lirfzVCxs0pVw1mKevuQKzis6RIT+N1Qp7k6S8p11f99TvfsgZ6KDxztkbKJLhcNHlPPjNXjDrNbDqY2r/hYqeFHQTnOeTua6agJ41bR+hPHoj54ReCl8TsYH07KEDsNiZHeELtRPYjpJc0MeI6VXtSFvZFH5uFmVZWT2aflqoVxSjS7PlkT97VsdqkGRaZmAFdoiDurQoHyQpVJkWNr2yxDk1FOYxdv8Wfnkz0B+BJPaXc4Wh4gw5RLJpCDMJ/g1k0mzqNFltT5MN/24BCFYbVoSpnjpyjXEmomSQahnHv1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uEwBoqwILZ+SGa24yvqsSY/eJP2EU99FuwF9ANVnz+4=;
 b=WqWftxdhYEpJPjoIDzeiqMk9DIdjeLBnR5azydc5HbSUOJx6jaSK6dC356OFhue17aXwvcqlmQk4FwBctvCQhu82MbtwLUBu1lKYTE0qfwd4xzy+674mlme9CII85/GvNddn8cXswrrs+A4wQijdIdmCoFIub3tFCPQCBX1YhbazvGMRTV+nB/dLZ+LCxCiHkP8FL6i+3cCFwyWl3NglSKGrkHYtRNmeRd9EKn66OlJjne1r3LjXqSH4O/xx+E09Pt86mefdNhRQgMWNcuX8r1rBx7+FHpsOv4IQgpdK2Wve93KKx8jLkYb3FHEExHUnpL/tgpGlw2VoNJqULUTM2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:40:51 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:40:51 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 02/15] ice: Remove the E822
 vernier "bypass" logic
Thread-Index: AQHY79AAAIYEzr8euEiKyuxiDf4vqK5DAl2g
Date: Thu, 17 Nov 2022 10:40:51 +0000
Message-ID: <BYAPR11MB3367E921669F932A8FE7A827FC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-3-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-3-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: a9fbcb9a-352c-4fd5-3605-08dac8883266
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QXNqeqafQ5IWXHAXA0C6ul/zBIbgJdJ6o1fsbfbPbA4OlQ3JCEk6Z92lOGbcztn1hEMcBou8/baXP1Rz0tuWUG9prU++1Lm4kRikgFwdMFtMQNgTk+DQUdpbZCLJSnjGI02Rd6MzuGNK2nhTu8DxClrGND8qf6SPu2mg6VY0sJzx5B9EqWqHTLdgcAUhORibCwTEiRpod2vu1Pa6vBaiM1w05Wekx+c4HOciCLM+gM47FP0kWbkIUf/PPf+J5OLcwE8cFTdO+hTEBGv7qYKS03u0VNx/EULAc8mcBZzukjfnubAY/xmT4MN97YViBZj71ogFHhDDJ5+hEGB20NbtkSSJN1I+e3PC2hvGBMGn7a9EDJdk2+DOQLu+qRhM7sTtjcS0JNCeNByY8izuJw15OGCo840PIyPNL0elW/zkAbQ1gxqAX980Ht4yrMoWt3nVAiFr5BoITFYRbdVhiMSTNUfndpbJXrA3v4+9NGLjy/2o6UAe9c861W+fIYRp6YZEiVN0Dw2/7mpIZL//Z3H/TmI9gQRl6ip7DZ5ztErJ9weSez9XOHlOppnuI8NVnVedn9zizOzpVIOCIBwf0H/+Wm5BwGRlK3HmLEoUdCMibFFXH6i/I7FIFNtkvuS5BFLasw1kfGNqVxHJ7TEMi2JuS3O0nUoJywnsme03GNCFnY48hhjeOb3O9mHOB7uzNYuy+exiGY4nxHPXXsTP5aFKTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(107886003)(478600001)(41300700001)(26005)(4326008)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bysrLwQdUzE3FpqacHl7PNXFdMuGtp7cu4KDVHDFOAz4dW6h1OKU3gQE8E03?=
 =?us-ascii?Q?z/K4ATYiz1c7yBnkp4+FFmMWSNa07CH2Q0tBcFoRyhr4IjV9n9EEnAMo8PeP?=
 =?us-ascii?Q?TqYH8eOKlHq3M8V4PKB6nq/2P2XI3522MXJa3vYP1HsJjqEJhl29wc275I0S?=
 =?us-ascii?Q?Ep5+9I075sB57gxvNhPmiwCmEzuC3wBlD6bLWkD8uSUriiTyAGIYbMn7JUwa?=
 =?us-ascii?Q?L03Ydx6QpY/k4q2BYoTSxMKZpTFI/MsfQ8IAu9YEqcz/C60ciVq/Zta8pT0Z?=
 =?us-ascii?Q?Xrbv1O/0i5RwsxqbWREk7f8U/Rknh5yXTyDgwZ5VbuAzdEk0remreh5cV755?=
 =?us-ascii?Q?QWoGKF+J0eFSUG8YC5UHBjhdItb2+nMHZ/mBkMyajOiJnJzQwzTZuxsW6tWj?=
 =?us-ascii?Q?+Hym9EwtlxvtFgvr20fl9TfMbk1CMZ2a6FAaNGrsasWbHc7L7zAd9agmdWeC?=
 =?us-ascii?Q?whHBH26jnOKYLiIXvlTNRPGg/5iYgUtUWmk8nGUsEznMnpIq3PaqVpq+Zpqk?=
 =?us-ascii?Q?qZt2Vrc0cDnwSPujzXfghlWKV2qw0zEFaSzTNnQ8P7vV7hiinI6FT6MBveYO?=
 =?us-ascii?Q?UtRBjWX5Dda4AEv9nnVyvRJavM876h37KvVg3w7I0i9d4/RfArdv+V0vXPBu?=
 =?us-ascii?Q?ut7qiFbJq0x9ryfkuhJ7A+lyD81QsAA9e4mL+Lzr1yyPmkYC55IpseItvk6s?=
 =?us-ascii?Q?4m9p0aYYlbh0Excnke6/xYLOn+4OcjSj5BG27wqvjYcS4eEfk7PCtQMIdWXG?=
 =?us-ascii?Q?M9ICP0+ATZVPKOD1Y4AWugdpBqboeUKLGpSdYrC7V7n5+vLf8xJ08th2cK36?=
 =?us-ascii?Q?OJwaWxkJZ+moFsKmu6BpQUoAsMuci0+EUoAjRdIHLJGEgl6KFji3yJGdKdaB?=
 =?us-ascii?Q?6YRE9gPw6zrgKk/2452Le0tP1rarIVkmuNx1lJxdDZoBc3zcA94UmFiyBzHp?=
 =?us-ascii?Q?0He8IhTEfcO5PfqLwWUx7nh2zbmWH2D2I0Ev4MQPeVSCZ7Pb6IYyofoaIErX?=
 =?us-ascii?Q?v1MsxegaL161EhNaVrsISSc4VKtY09ZAU2uRA2o28sg42PZUIfm/EqpYjEXE?=
 =?us-ascii?Q?ybcDPZzzTXmg8zhZrfoRfl8H4XL2vrhWMxlViyiUIjezQl2/vn67XaRSfQSU?=
 =?us-ascii?Q?PibAXJMgp4Ii9N7/5JMzp811T9WIzvqwUEcgUjUKVEegXfkv+qoCEltvmXIS?=
 =?us-ascii?Q?eackKuNxOhkwlrO+HWCuVgF7iXCK5G2O3SmttE/t/CKN4YqKZZ7t9fwWGh0v?=
 =?us-ascii?Q?ztoFts7yNb3eFkLc+Ow+OyP69ZOqZmiMaHheNzOHwL8pEBn/rvjFnFuCiNX+?=
 =?us-ascii?Q?+6UuXIZ15kakZIRwJGt7KIVNgb0BHkTz0aBCxHNhLK4B9JHaHNjDSwVjx0wi?=
 =?us-ascii?Q?ZVaBSRtd5xh44ao4kuBImdtycWNn3Bk5zHoqcwq6xJtQdu14GA1zRG/Svt/L?=
 =?us-ascii?Q?1p7UlbyAhSjPn8e3V/Aku/mZ5f5aiV4IeL9ExrAAevn+Vpdq+WC64WqZQjXE?=
 =?us-ascii?Q?3iwAakztlX/PWewwwUaUyoCZ7Dx2Rc+z6kp/LndGZ+ct5rggShok6p0JYi9a?=
 =?us-ascii?Q?wD3VmeWI+NUzG7PuzknDuosxsiHoj0TJknG7mzdd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9fbcb9a-352c-4fd5-3605-08dac8883266
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:40:51.2700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vJvf21SsBPMAQ5jCqoP8Fymj6ldpn1fH8FY0KTraPXWLnRC1n9Bu2VdwSt/pj4LoBm371McshCtUU1VojE7CCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668681655; x=1700217655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i+K2gB17vi9d/xKlUjeGRX00M6J6hX14T3v1Oq1J8/o=;
 b=Vm2tROKih5f0hwKMYJBQyfD/JjRC5a86+1MZp/6KuX92PQJuXxoEGqMx
 +MViThdTqpOabb97OxQCT5yUm7Ai0PclhgiBWSrvdtRA3+ejcsC3zHZIs
 kbMVl1/IpjrpxrvC1Vih+nmDbT3rJOaef/j9OklHxuPW3hF74OomLWSAW
 TH/JwntLgT1Bcq7eQ1mofOVjZNJY2otsFNwgFyimz7atLYoHA0HDNJGvE
 xu1iGGBg3xv0yvkjFXGyAulo4Q9lC0P4pSlg1Ua2PbOd65h6gZcx0Sgwg
 ur+z+tsQsVDWxZ8eyOC0y68fSR2L8NhVRHsDhAwJQyEtCi+tNYxZ/sKDX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vm2tROKi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/15] ice: Remove the
 E822 vernier "bypass" logic
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
Cc: "Olech, Milena" <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Olech, Milena <milena.olech@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 02/15] ice: Remove the E822
> vernier "bypass" logic
> 
> From: Milena Olech <milena.olech@intel.com>
> 
> The E822 devices support an extended "vernier" calibration which enables
> higher precision timestamps by accounting for delays in the PHY, and
> compensating for them. These delays are measured by hardware as part of
> its vernier calibration logic.
> 
> The driver currently starts the PHY in "bypass" mode which skips the
> compensation. Then it later attempts to switch from bypass to vernier.
> This unfortunately does not work as expected. Instead of properly
> compensating for the delays, the hardware continues operating in bypass
> without the improved precision expected.
> 
> Because we cannot dynamically switch between bypass and vernier mode,
> refactor the driver to always operate in vernier mode. This has a slight
> downside: Tx timestamp and Rx timestamp requests that occur as the very
> first packet set after link up will not complete properly and may be reported
> to applications as missing timestamps.
> 
> This occurs frequently in test environments where traffic is light or targeted
> specifically at testing PTP. However, in practice most environments will have
> transmitted or received some data over the network before such initial
> requests are made.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  10 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 145 +-------------------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   4 +-
>  3 files changed, 14 insertions(+), 145 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
