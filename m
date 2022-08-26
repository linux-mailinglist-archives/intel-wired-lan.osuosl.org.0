Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 334D05A2910
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 16:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 384EA419A1;
	Fri, 26 Aug 2022 14:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 384EA419A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661522849;
	bh=3ssdOfW3Z4PmzXEK/mWVhiU2Op9li54ycM9R0zaR3/g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o8zM7UwsTytUphQaVtiaifrLBdmmOr2HnctdKEzCCPwcFLwx0ykJrcGBGkFLgHdQR
	 JLmtOhqOKMRgbSSwCD56rdVeRDOFj9Ecbpc+XWmLeTB83jDCSoRtfWHE7IEOsME+3L
	 Y8yidaEy+Xzr2HE5H7PtrQFHVA7llPZiR6yFvP3dyr+atwITlk3+cxdPQQ5PbQKvuy
	 Eh6gRHLxK/r+EGaRnv75w/PgdI+FvjBS40Qbio6XdFi86hY4YZfXxf/USqxbwv95qu
	 WCzJxMyrVMsYYIx87lkgMwHY19CUzs2MxtdZ4B2yv5Hb4ANA2eeaANXqclEveGXGBH
	 ORYUZ24Q3GyDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TptStPRbCkR1; Fri, 26 Aug 2022 14:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1BAA419AC;
	Fri, 26 Aug 2022 14:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1BAA419AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8CAF1BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF73D83F1B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF73D83F1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tIpDT4_0xg0N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 14:07:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2308083F19
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2308083F19
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:07:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="292092015"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="292092015"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 07:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="561449006"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 26 Aug 2022 07:07:00 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 07:06:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 26 Aug 2022 07:06:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 26 Aug 2022 07:06:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNYULgX2xWKOTZkBcO1Xb4HSvY1xZNl56uJc75QeAEWyTDFKz+eMFvD6nHQc8jCkMK08w5zbyHrrJ4We/4B/lmxDYlA7Eou6veh5mxKpI0SHJrCIiXVmuVXUr+OAr2R+lSaI/hA4xCfE43MIJm44PYqEPvpCft0Y8/56pDQwDf5wOdXwst4vrIVNcue4vosDSJRwVghKma4yZndS5D2HChshNfRn/1x7IT+UXO67uyUL825O98hobN2VztJxi5HOToHT+XtiF/oTpVF6JyGHONnWDykOoQSGYG/EwzHZMWDC/ZuDogl4FFvuCLJcNbBYyDdbt4O6N1myVlP66Q+WAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IBz5w203WFYaRtx38XIsEevRig59fBucAXzDZJ0I8zA=;
 b=jXOrTpHO5IQ2Eyq3fAHOyXLkaV/ZqlcvrTwa6rKVKkNTa7aQ+AucK90GYqFJ39ZvQiRIKhPi7E9wJRPV0FSIMxuO7JApdNifSOyM7MoubLtAo3uDfDNOdS46JPAGRv0UfcixxY0DCU1sKgLmEnRTdFfOWBJaM9iDu6VfBnsIb1HudZUZU7Jk2K8Jh5HpEulTVAliAyKg2UvGeiSrM/IN5QY5ZRk7jaGB4jz0Hh6pWE1TaK89DeiK+cT832br6e2VyYBJRrmTuvcYtT1IcTDQCxdClWe2T03AmOWb1ycU28sZP/gncBSNKzXo59crqdCqrmsffggfjvbiUpzx9NQplQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB4490.namprd11.prod.outlook.com (2603:10b6:5:1df::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Fri, 26 Aug
 2022 14:06:57 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.026; Fri, 26 Aug 2022
 14:06:57 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Add set_termios tty
 operations handle to GNSS
Thread-Index: AQHYtyZDa7mEzJXM00eU2NXgLapHL63BO8qw
Date: Fri, 26 Aug 2022 14:06:57 +0000
Message-ID: <BYAPR11MB3367828E1CA69E07345AA48FFC759@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220823192429.17881-1-michal.michalik@intel.com>
In-Reply-To: <20220823192429.17881-1-michal.michalik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bce9e692-7fb9-4bea-dbb3-08da876c3d0e
x-ms-traffictypediagnostic: DM6PR11MB4490:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nUaCPmiHmrupFRpfs3prSoZFsnBIkSLlAxeDc/y43F50bocaYJ9wlba+3BXmexDbCeflVLkPuPFy+LpMobU2n+5+szdh38giKG82n/r+hrAwITIHllww8DcT38sstc0DCIzw+3zqTNTzz1qq+gAxXc5ZU70yp83UQW8QdpnU914A+Oa49tI9sYVYTp3zZAKgUX+09gqtAJcgu8EbSJd+PO2/c7gqD5KjpgY70k80b8JuINT6zwpSqhe3dGFTe8we/3MXZ1kXtt4NRz4Sxlw9h74usHJRzH3bNILdLQ8+Xuh6z/OUvu0fp6xGqiSolYiDDi9G8bQqjHx9SOh0SUY3xQnNkBefkDTW6+4JAfwrhvGjbrgojfcxkarUTaRwtA3gesahOlAGvnj6kOaDEDdUuuiA6zQVbAOdjeiM9NwqKP0+eFhINWWNl2wWMt2ko502mZeNEzbVC3msMI3Cpr20SFPtqftSLt2+RvI7QpqwGAInkuYWegGaTWieEVt02WZ+aW/ZZ3Sc19+60Dg3B94ACPpyK4bcIyr+kc3n/P4xRrcNNyC0DE8SpTR+sVQQgNzMwM3ZaNxC61JIQSwCxez1x1ulvJLRVnedVEEJ8XxK0rFqreBI8cr3Hv+XR5y7j7nNGjOOAtuoEQ6VrfVhTtxjUm2tlgIBRdJiQMi1dA3r1DmPs4KLebB6hJKwrqx5kR/F8REX21JPZb7UKpyc8dSdoyTNRlbjxVSyu2LnLpGJF+UO5QKagkEUvWbvKgHG/F/xZLuIaOASbZNR1GJ7bpWRDuCmQmfV7QZJWFNDNBhJNpJi90CveNXSJqQNM88F7prz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(366004)(136003)(39860400002)(396003)(186003)(41300700001)(71200400001)(26005)(6506007)(9686003)(7696005)(53546011)(83380400001)(4744005)(8936002)(52536014)(2906002)(5660300002)(55016003)(8676002)(478600001)(66946007)(66556008)(66476007)(66446008)(64756008)(76116006)(110136005)(316002)(38100700002)(82960400001)(38070700005)(33656002)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vSfP6jFDBuHB0bhKgw5y2v6Lu0Tkuo2LDtekxglkNxwaQqHAQPQWGPRY1JAy?=
 =?us-ascii?Q?m+E7vPWqvi2DDQUhxnVEROMutRlhUEEmFSAv2mvUNfKSrXBhupvZka5pfXa8?=
 =?us-ascii?Q?C1/MiDL3rI0l+AKFwHMyILaqjy9CA344DSacs8CFDHEG0JszXEmojXJPo0dM?=
 =?us-ascii?Q?V73Yc+Rrr4oj1rMBmRJFL/TI3tZiGKAQcGEgxXubNCi6s7d8gCq3pGbBuunv?=
 =?us-ascii?Q?m5PViKnjs6QyFZeAYjlC5mWbwQg2lN28jLKGhIa3AODCgV8kewNvy3UxYF8I?=
 =?us-ascii?Q?zf9pH+aKucEYutbP+moBdjE8pxBe9N7AxfR8v+MuA/B8OD6U0fQmBTO1JDrR?=
 =?us-ascii?Q?mCIznW/cAyop6D4DCZUjRyjuzaMcwU2DWeu/1Rz4YjvEWICPC3qq8Y4AiMae?=
 =?us-ascii?Q?ZS75B3q+ZifKXxRh3JjfonBQNe6WAKecEUJDefCKt5dzoVGifjbC7xgvnduR?=
 =?us-ascii?Q?shEBCfplnNK8Ro8wqdhPeV21kBW0Ox+Lqo5Gxrwz2yJKhljyALCkAPMl6H0d?=
 =?us-ascii?Q?xLf/+H4n2VLSH3hWU+PJVqzz2TEbJcxGiQJrpucE8uvf4cyHwVQjnHQ2u5i7?=
 =?us-ascii?Q?Q1c3gLKUvamsTWMpYRz3jr9ai0ANyNWDJM9LK2/BWYX66AIh3eX315y3kPtm?=
 =?us-ascii?Q?PfyqWw5/wRue2VZiMTSWqcgFHiq9PMrlHsjOFgoA2UubRK4VoNF//MDqYCim?=
 =?us-ascii?Q?JBBX8DPqCj97QNwIThZXyOitIYjNfQ7ZbA/OkbLkwPSaDetVFfvWlKzGKSyn?=
 =?us-ascii?Q?6jv9D2zvesJZWO6SwF2oHSiuzY3gR0SuwiBVPlTXcdFWLiJW7TmCPVFV6us/?=
 =?us-ascii?Q?LD53n2RU5Bbfpr0rowEX52Nz6NLQ3aG+YV+kyAuONAHGOMwArDBfNu99VLS8?=
 =?us-ascii?Q?QQFksaRLINiL/cv033nLyzeh7u/YryJauh7Dv2SYYd106bPC++lA8nazzgds?=
 =?us-ascii?Q?VwQQruug+mULTykI8uOkj3Sd2oyS35uPXfaqzBUGU4gZ10GBZby0yXvhYssa?=
 =?us-ascii?Q?8yUIiM5LpvgLeulr5pH/cRuS4jBvCo6nF8G5T5cNr7XdEG9e1Df8OM8Z1cIn?=
 =?us-ascii?Q?gya2UUoF0dfRQWcYQFOvcLIRMB2fG1KXHo36nOcHI7GeTLjg/MSTG+ZT+qEY?=
 =?us-ascii?Q?fq+gm2w3ConRpviyO6LIWAVNw5H/FO/UPuJcl0+ODNzm2t7WYSSgzTOPhgHU?=
 =?us-ascii?Q?DnLtP65aqgaIe1tyYEapXmQtPCZ6qE0mgiTPTPF2OB8IPh2zs52LCTuSaQA9?=
 =?us-ascii?Q?qrrQxJc1w6i2Q4RFu30s3fnQGBU430xYMA0+S5ZQqM2Hj0gBbwyFt2cdxIkj?=
 =?us-ascii?Q?fSTZjw/lgodZdqbcldro8wFRpwuvU/EHP9KxXKhMD2Bm7Y8rKIXjSECaieGz?=
 =?us-ascii?Q?n6vyQIb6eIABrvViek0Q0q/S+WAmf7V2ggwggT5gacPpW0GBAfstYaX+HkYS?=
 =?us-ascii?Q?wDwDdKAlKG2dE+En/UNaUfBkLPw7h4rksIgdmfukZjFXrGJBARC1AlaWrtJC?=
 =?us-ascii?Q?JpBd1ZTyWGYgI+9k/ntTEIdds+WsgBz1eO/CknF0Jf+eD9enu80pryvPzuHA?=
 =?us-ascii?Q?fjTiRM0IKUAQHpWd0yEKTViQpJKFOCO+hhQCQifF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bce9e692-7fb9-4bea-dbb3-08da876c3d0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2022 14:06:57.6791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oyGlCSFYDHo6rgEMxCVTU2nLyhAzAYQWNOJKKjYl5Z2hEjL3/d3pXtrh/fL+C2iymCvnoCuSMPgi4LbfBIWwOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4490
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661522842; x=1693058842;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lOqKi+yrehxvFXUCiUfH9xqjSk57jYRKae3Wk4YCqFY=;
 b=kApQg2pvPLh8gfvHBI5s8kIFrVU3O5+o+nyYZJkj/AO/0g9qX+rF7p2S
 sKSK3rcMjVAjyfB17Uc4O+Lhp3ZEKy1nvTtet7ws1zmKvjLc9mRzIIchZ
 Jun5JuUw+DmqHrFUQxbeEYOk2bQxeU+X/v+pDA13acqJwHUK16MNiwPAA
 iNDU0HRKTG8IMXZXzx66p/bn3nJniG+qA0MaDp8TuKtXSWYLTDcMkme2X
 Uro4x4OvQXm+UmJBhceuLXuJPu9bBBpfnY0cYEWH1Dwe1G1R/7QU8Jqyk
 +tUA83Lh4EXlbzevfYDhT0b+zJ/5/7brbC+NGefk35Bjkv5oVDEawpkBI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kApQg2pv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Add set_termios tty
 operations handle to GNSS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Michalik
> Sent: Wednesday, August 24, 2022 12:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Add set_termios tty operations
> handle to GNSS
> 
> Some third party tools (ex. ubxtool) tries to change GNSS TTY parameters
> (ex. speed). While being optional implementation, without set_termios
> handle this operation fails and prevent those third party tools from working.
> TTY interface in ice driver is virtual and don't need any change on
> set_termios, so is left empty. Add this mock to support all Linux TTY APIs.
> 
> Fixes: 43113ff73453 ("ice: add TTY for GNSS module for E810T device")
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_gnss.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
