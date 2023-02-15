Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A20F66988DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 00:43:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA385417E7;
	Wed, 15 Feb 2023 23:43:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA385417E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676504603;
	bh=N92MqESa1Ediz9Z6g2GT+ebWFfAmKWST+IZovrxOqtg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x5zXOWQ7qsV5dDzKxTSvQyIOpNmsOO2nShd/Q9hZPL2+2CaibpR6OGqPwOGo2JHH7
	 Sh0aC6/jJNhbC7CQ86Qi8QJmjN+zpi6gv0GSmNErr62IMiigucxtfsADSdWDqySBQL
	 4C2CrWDFVCHY8eIkr7TE21xrr8/UsIcAqc5VRaKNTllPgimGe+07iuy8M5G8+1VIJV
	 cJQaM1+AxvKglxSB2X+lBn2ynnRiOfMkUuD9b1fWe9Q5I9Awsh/s5OjyvHZRelXzK2
	 FJllAPkAOchSpV6jD2+gwSp2BXAeseR1Yr0NN1xxmjfGbpyOcPMWdvFghXn3FkmZ5K
	 elB5mBgUDGLEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wBEmDD_MXGi9; Wed, 15 Feb 2023 23:43:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F4B1417DE;
	Wed, 15 Feb 2023 23:43:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F4B1417DE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F77D1BF35F
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 23:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1827140C6B
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 23:43:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1827140C6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hu29FFTmM9i2 for <intel-wired-lan@osuosl.org>;
 Wed, 15 Feb 2023 23:43:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AE3B40147
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AE3B40147
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 23:43:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="315240933"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="315240933"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 15:43:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="647447529"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="647447529"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 15 Feb 2023 15:42:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 15:42:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 15:42:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 15 Feb 2023 15:42:52 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 15 Feb 2023 15:42:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kfb2nYl2+CYBubdxxMO9320t9e/A6Kzc+uLIqqM4PhWcUVVq6vnqrd6plb2cgEJInRNpJyZzDdRrFcRBPQFRLM1oEWsAHqbvBEGo2Hhapm7AxJvsNl0BX7F7sM85IvOvIF88fuy9zr4PES4M74l4qJVPUTeWfbQLnysYe2aLsc8aooYY3j4Sa4t0dtbpDY8TnB5u5T7gtJk12ugCi3npI69hfk5THPbCxciRBMt4RCBvUp0e3ZxzoW2AeDu1Q/PVQgZssevFYLUfrmABj5htZuqKPxBaHz3ShodVrk5CKcm4cmdAn+NLRfX4X/IcYAdbFUm9p2bO4oD/Ek8WYgOVfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7GFvG7WUR2Wwf6avSpMDENmiTNpkz29W+BVVq53yUDc=;
 b=EOUcRv3bleodukzfUmLwmcTiWSmESrpILqVpzDemeGwKZcaOAhQ273wvV8Julzwfp+NF8HdZXKhibhVv+B8RXhsL2zDUg3UbIK7kVtrD5B3DDt6W1bojUCQR+cEF7y3ped1F965Hs2wL3Vt6MOf3xTXw9Y08WNtIdqyDypzBG8Q5vDOt1VI3nOeXNaoNBYZMXqDaGpo0nSCTWYhC8/nlY6vn4yL6fx+9wWq9XvD78uDhLBzWbT9xT9iWSP02d58qBa1tidy0nPLtcHheeuZxUTwddMUlq5HvUatLs16qG7k9g4aN0pMSi+BBiHrL0ROcjEs3aKAlQOdvq2925SeyoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:388::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Wed, 15 Feb
 2023 23:42:50 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d%5]) with mapi id 15.20.6086.026; Wed, 15 Feb 2023
 23:42:50 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v1] igc: Fix qbv counter not zero during 1st GCL
 enrollment
Thread-Index: AQHZO4ERJG7rZ9X2kEiwlInQPDxjf67QaxCAgABMJfA=
Date: Wed, 15 Feb 2023 23:42:50 +0000
Message-ID: <SJ1PR11MB618048DA6EF3FC950683C386B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230208054517.5615-1-muhammad.husaini.zulkifli@intel.com>
 <6981bde6-b836-42a3-5a07-bb2fe21705cc@intel.com>
In-Reply-To: <6981bde6-b836-42a3-5a07-bb2fe21705cc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DM4PR11MB5501:EE_
x-ms-office365-filtering-correlation-id: 7482f205-76f3-4892-f63f-08db0fae599c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T59Hc7LFV/Q9TH4IXMcErDmE8pTpXxN1QEsX8aPACj1k+sA17zpqM7UehduJtMHn/F3jwv6jjE54+u55HIt6J4SPWHf/vkeqQK31E2Qe50ugS0tdvRwaRl5XqwxF1dvXND3pL6RwQ6wFPkEm6s9a7FqB1lu2unW7woX77orXDyLk74vY8FZKdGyCVCuM9wTTnS2krQvcPcDfelcdljJF1JLt2IYbB5jO4FAxexbXBjiNGWKINBBtSnmO4fY3xMCfWxwojIi/RYQBuDSrKFQrRaMb4jCACZKU0eq9okTksojmepN4irUYL8U0bazKqHiHOT3va+yhCBd/HEYgAJknTB1yikGDmj8sJmof2vceMDla6z1IdQO1ugMhKb0MwxmXd2mwPOLCiSNxlo3qMGAbBvhJYy9MyhN8OFTM6YXqPXiAx/h+HSRyD/QDard1HD9ZLnbUGTlgdudIV8tunY/8MAmdewH8sz5qkDY4IA+fqlHMUJVU1cEndb3cgNDiSRMe2iKvbLPGEe+LoJqeJBsSiAmDtb6qvuf1uOQqy3oVqoNSsZrR+jWZUPp2umap9mbneyKve38P9HnzoWxqhrNhYgG1qb8o61XVi6A1uTfTqDo3Ur0FT4P6UHFrTMIgyI7lOyTa6Fvt+kxRrjqXOCsxW48SVkaGjzNbvTWw3zv7iMc0Aoo+tFv2qckgeCeW66I0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(396003)(366004)(39860400002)(376002)(451199018)(26005)(966005)(186003)(6506007)(316002)(478600001)(53546011)(9686003)(82960400001)(7696005)(41300700001)(71200400001)(38070700005)(66446008)(54906003)(8936002)(2906002)(5660300002)(6636002)(110136005)(66556008)(66476007)(8676002)(64756008)(76116006)(66946007)(55016003)(4326008)(52536014)(83380400001)(86362001)(33656002)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2hhYlI1Vkh6dW9PbldjeVRITHpFSFZ5eVBsdjRoZURxNGZCRm1UTWVxN3dv?=
 =?utf-8?B?dEl3b241Q0p0NXRUbFp2eWt2Q09Pa1ZHdzhWUUlKcWxjTXN1cUlNVmdWWStq?=
 =?utf-8?B?MW5LMWI3aWRqUkwwNHpZMmFjQ0JvN1VMUXFWMWRuaXBFZ09DdTRaNkVLaWZk?=
 =?utf-8?B?RUZBajhIRjhabldWWjc4NEt0K2Y4eXc5TDU2UWdNNnloTG12S2c2ckpNNzhF?=
 =?utf-8?B?N2FlLzFnQjhuQW4wSVNOS2ZuUllmS2N3ZXdjZzdySXJ5STZIOFhOTXhXQjEz?=
 =?utf-8?B?L3QrYSt4WHB5TnBkWnY2U3ZCaUpQRnVrVUZpYmVmNURnUTFYWTVBdTg1K2tu?=
 =?utf-8?B?QkpaN0RsZU80RllyQmgreGhKMDk0U3VLeFRESUZXWkVacDM4WktyUHFYWHpp?=
 =?utf-8?B?ZE1HOTV5T2tDN0pjS3ZPSW96YUE3WnVGTkJLWWhLZVJoTDlYbkM0Zkt0YnQv?=
 =?utf-8?B?MmplQm1kRlg5djVNVTZnZHFCRUJrOGdUWWlzck5Xbmg0SmpwLzkzZFZOaStQ?=
 =?utf-8?B?V3huanJNTjVOVEJYa3Yxb0thZTZXZEpLOUhObitVM1ZXVDZmWFh6UGdnZFVZ?=
 =?utf-8?B?cnVZZmZ4K3JxQ3NxM3RpbFJLdkIwQXl1VERIMmNaaS96Y0duNmgxbXdrSHNT?=
 =?utf-8?B?T0NqNmQvL2hwTE9lRm1kQ1UvRk5xV3dVZVdpMW5IOWJTOTFsLzNkREdtZGRk?=
 =?utf-8?B?MzdzaDVNUm5XYTF1VlN4ajEySjJLY2VQdkpOL01mckdOYkNHdDNsNEJUN0Rm?=
 =?utf-8?B?S1o3UVk1NVVSWmQyWmR3a3F0dmVZTUpoZmRyZjN4YXhINGpYU3M4QTZLSFpr?=
 =?utf-8?B?V3RaTVlWMmRkNG5LMmRLYjg2MmNPSFhlRTZBZklCblgvNDR3S21GbWlNdWZI?=
 =?utf-8?B?ekUrc3ZCNnh0SzBWeXBIU1VETXhDKzhVT1RMdWdxMmFobUNNeVM3MkRNYi9O?=
 =?utf-8?B?R01YQjNHdzhVM29DTklZK1Jrd1pXTjdQTjhZTjNLQXE0K0ZXelpmSmNVZ0Zy?=
 =?utf-8?B?VkpkQXBWMjU0eFBoS1RNcmI4MjlLV1BpZHFuNGtqdzVSbUlkVlM0aHFJUlJQ?=
 =?utf-8?B?bS91NFNUUHhLbXovWGRoMTJOVWg3eStVSHM0bWJuQlRZOUdXb01idXM5WUFs?=
 =?utf-8?B?VWhyU0lmQVp5dWxaMzF6VHhiL25HZDQ2OVJ0QzZ6U0tzK0tHaXVlUUxHQk5U?=
 =?utf-8?B?RnJLQzNxT29nMmtwUFdDdlZ1ZjBuNzZydmlJWVBVemVzU0doUEtHZk1xTC9v?=
 =?utf-8?B?WlljN2VTNDZtcVNydVZBTXMwcVZKSkxWQjFRN1JXT3lWQ1B6eWI5eGx6a01Y?=
 =?utf-8?B?cXExWXk1N0NaSzJUTWM4MzAxSG9kWStubEFhcFA3ekNkOW5vdU9DYThTY1Vi?=
 =?utf-8?B?SW9CeUU5enViKzRCSGVNOHdtbE1LTmNEdWp5R01leXdCWkk4amFsejhJOXI4?=
 =?utf-8?B?Smc5NWxZVlc3OXhOQTF4cWxBQTJBTi9TMUdpZ0p6NXVKUXhhd1hqcDJmUDQ0?=
 =?utf-8?B?V3JRYWdybUNWa3JNOFYzRmtBdlNncWcvcXRYT2pVQWJBMU12ZTFGSVU0dkVo?=
 =?utf-8?B?Q3pxT1VWdzZKSEhpQjVjeERXbEp2VTduMGtFYUlWQk5nR3ZjNHZDK2x3TXcr?=
 =?utf-8?B?M1NqSGQrN3dUTEJNYVQ3T2RJQkNpbEthcnJpUHRha3NZSjZjNlpsc0VjaHdK?=
 =?utf-8?B?U1Z4L3dvL25teGtMQ0R1ZG10bkx5aFdaTDNQMURxQzZYaEQ4NTZhUksweTRP?=
 =?utf-8?B?SGlyMjFlTHI0emFUTHM0cnBPRElUN3VZc2VRQStaUHFSWElWc3FaTjlCSmVF?=
 =?utf-8?B?UE04TlpvYnlOZmhzTVZqOEtsNHh6NHFJVWFYRFAxR0srM0dEUUl6cmdqdGpj?=
 =?utf-8?B?WkFBNUlPeXlPOWxXYjAxNitUTDRmdXVPazdLalZBNzRHWTBFRFQ2UzdWVGZK?=
 =?utf-8?B?cUV3SS9EUTRBY0VMQUdsT0w3TmtNSldoalRCdkx2L2ZDK0Rmc1Qrc0hicWJq?=
 =?utf-8?B?REVWWmZISyt3UWZud0tUL1F4QkZvR2w5YkRRRFNybTAraDEwWGhkZy9zRkw4?=
 =?utf-8?B?RmFKSTBuQUNySUFuYVdJcFc5MjFrWnZEUEFYNmF0dUJCZFBuclFDOHEvdDJy?=
 =?utf-8?B?Mk90RGFTVU1RVkNadEZzbFdMZUcycW4rVk91OUNJbUwyeEgwUG4wL0t3YlVP?=
 =?utf-8?Q?eyl0aAKgTwC3bEXwpaGI+ls=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7482f205-76f3-4892-f63f-08db0fae599c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2023 23:42:50.4617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dfX9iNFFvm6dgrnqOJrrcSalmakcbMJXrxXwuO0OJU34GStcKsarOGBOK3MMU+0z402/ljb8mIoWKoUK3N16C8ypoTEjbc0T7X9dNLXyonf7+Wqz2bTZD7uZueVg3INr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5501
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676504596; x=1708040596;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7GFvG7WUR2Wwf6avSpMDENmiTNpkz29W+BVVq53yUDc=;
 b=ePghsIk4CjqWens1aSGQ9gnbxrnzstCQlCu1nU3F/W8Ktrmg0nrGApuu
 YC+QFnyVC4y1aTyZkhIuEhl/jF/l7JoriiyCMxUaICxORypqIidIy+fBl
 Zf5ayQYtkq4c9wSWdvn29Lzb/zbKElGdzOrfoz+XtCo25F/20Zg6nq78u
 L0CYOlSIjd/tkP9JQsNC/QVpEfdyQfOW6kDj19pXzuE+3lHNcI1dR0XMp
 OydDxVnQXJnvK0ZcSgtRQg4tVM9LB5MuQjTvhlFEo+pfLdjMrbYnULw6B
 ILvrSBSuKdV+g4hFcSr25d5RCqNEnN8BFxHtjCFLL2Erh5kPHwxUdDbRO
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ePghsIk4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Fix qbv counter not
 zero during 1st GCL enrollment
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

Hi,

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, 16 February, 2023 3:10 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>
> Cc: Neftin, Sasha <sasha.neftin@intel.com>; naamax.meir@linux.intel.com
> Subject: Re: [PATCH net-next v1] igc: Fix qbv counter not zero during 1st GCL
> enrollment
> 
> 
> 
> On 2/7/2023 9:45 PM, Muhammad Husaini Zulkifli wrote:
> > The counter is experiencing some problems as a result of recent
> > updates that prevent the controller from being reset each time the TSN
> > config is disabled because the BASET L/H value will always be
> > increased rather than zero. Previous condition is no longer valid anymore.
> >
> > The TQAVCTRL[bit0] register is used in this patch to check whether the
> > existing GCL is being reconfigured or a new GCL configuration.
> 
> Since the qbv counters patch [1] is not accepted yet, please squash this
> patch into that. I've dropped that patch from the tree so you can update.

Thanks. Will do.

> 
> Thanks,
> Tony
> 
> > Fixes: 1d1b4c63ba73 ("igc: Remove reset adapter task for i226 during
> > disable tsn config")
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> 
> [1]
> https://lore.kernel.org/intel-wired-lan/20230208054517.5615-1-
> muhammad.husaini.zulkifli@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
