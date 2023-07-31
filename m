Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C857698AC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 15:57:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60161409DF;
	Mon, 31 Jul 2023 13:57:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60161409DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690811875;
	bh=aYHhWRzkCFtR1lTtMTM6HinVqvRKxkIPgqew4P4/2UA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=466Tfdyl1n/MPtqjRtdyDqpTMgr+wplsdOcdjNRj7y9Q1XVBcEu2w4LLGDUG8Be/Z
	 CyNuz6ZB+38V0p2FTLwObCHAm3D5MFTj2IYIIkkmo9LVAlmBS0oC0LkLVJKbXIQpQ2
	 s7bv9tiFEmz/Tz1sKnRUxHhYJSSUq8+UCwzp0An3woIXvbVc5lhlaHWpsfjqsbR5yh
	 WwPkLOjLdBSUB1FBSxtkQyiOuEVn2csXN+N6ZS4kxS7NpPcdwtN3oHxmHj54HoOTv5
	 b+kI4QBTQtcF7r6vFeUh4KyaprnMrAOPpd7+g7pSAJUI7ZLv9NJ5Uhpt0SHGHOGfPW
	 crtQASmDy9Z1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UmBIAQKZgAeV; Mon, 31 Jul 2023 13:57:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D28194089F;
	Mon, 31 Jul 2023 13:57:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D28194089F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 370571BF38E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 13:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E43260807
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 13:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E43260807
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FEgvgvsye9Na for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 13:57:47 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20DBB600CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 13:57:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20DBB600CD
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="435333550"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="435333550"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 06:57:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902148313"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="902148313"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 31 Jul 2023 06:57:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 06:57:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 06:57:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 06:57:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 06:57:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CKNOdFKJPYgc1AnYEP2v8xAzZsAfFi5wYmlrQCb5J5l4HDODdRNpqFmZRLoNVrTzVeiPuicHS3QEgfBWE83BWWx3qbKqru9zkcFMlMIqxEWQUtU1mjju+JU0xdj9wkYOhJj7NnMWQAFyKrjnEM2fdG2k08d/f5fFO+DZMjtccAbAJFlCafoeFYdMKu2cWkuF8BGAFll2dgpMDdGillKU+ReUcK2zwrL7pUiMeWLxIBjve9UYhyw1S2RwmstzbH+8aP8tc1nhtyPM5xPPDa7W2eOUM9VTMdQUcUHmoXoYyjssesclb8CY7KvHl3WZfjCGxq9jY8dU7dzbrdHjg9s+eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iFIUuRDdmDRfX+cNwyK91ImAF4/+ZUITGNP5R319rdk=;
 b=ao2uLh4dEvCBUy7vx3oe/VlJu+eIOgV0zr0zbR6MjeQGL2S58uN9JkQa2rNysYPCO6ew+XSlwQShpPEy428HJ0n0ql+6A5ZsZsRJrQ5Mm78vUSlGoAXVr2PElvSaNc/TwizrJYDV8O+CIMiUiAbOcVEeXpt1AXk5zMWl+yvf7IRqHHxfYX/++Cvg2bn5PsrYDxEhYBh6iHBH58QTL4qp6UW4aa/CpPAxit9n7I7W+WYyVQTmrvLtm4+jGTRCtGmM5q5XWWD5BfVeKhjt8XFil/z/4e7gIAhVmclQcKLnow+FGrvOYKyd3fFJDgGsBM9GzcU82sdDWF4DfF2PUCjnNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 CH3PR11MB8212.namprd11.prod.outlook.com (2603:10b6:610:164::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Mon, 31 Jul
 2023 13:57:43 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::401b:360a:f15f:b0e4]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::401b:360a:f15f:b0e4%7]) with mapi id 15.20.6631.034; Mon, 31 Jul 2023
 13:57:43 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Clear stats after
 deleting tc
Thread-Index: AQHZwGZuYYYvwIAy3UGjHNtk8HG2m6/P3gYAgAQOlYA=
Date: Mon, 31 Jul 2023 13:57:42 +0000
Message-ID: <DM6PR11MB27317F1D61E7B50967DE8C90F005A@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20230727084335.63856-1-jedrzej.jagielski@intel.com>
 <3187ca51-d1cf-d175-5740-341ab9bc46d4@intel.com>
In-Reply-To: <3187ca51-d1cf-d175-5740-341ab9bc46d4@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|CH3PR11MB8212:EE_
x-ms-office365-filtering-correlation-id: 0501e294-eae5-4930-924d-08db91ce1c6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FZEbGddy+/qm6Ekn7W2XbaVDQRhBK3VBLf4Lr0pTlHMKfDUgLrc9eAj3b6cJxAZHml98omHGjkRs0tyHbDcm9fgywT3t4VOBqnyv5PZAmbguj/cQbu12YVxAtpBhHghxKbdR06oLYmEc8qAmI5vFx8Uxi3hv9M2wJGkXcbXbbve0nwsMlKkY7IsSv+cHftZhvIsEfqE+xySaIZgb4tCXT0lXoaA5Zj22dhhfTkSLocwSa9yHL80AyRUgH2EhzHhr9HBVoU7QwOdsODcqqQTyn71zABQWeg/zPuCnm/CfRueUzKxpCsHajT052d7PcEQX22rV8RPhoK25dFM2GlNr0SjjVrg1jvZOwUfj1DQH0lxKa8KOwTNne8gC+2Td4+i+GY0WyOLfWLWOn8X1bN8HfspxEQDRXUSTStDYNXdue3MX3e4mnJSK4bFgeQGpsS7pf4iztsOu20RGfN13sG7lwYgmri8UfUubh5pDxXvY6g/OzZw4PQpNj+42dyDPKDLot0SnBOpa5kAcxWR5eNMvh1uEfdJIV4JlMhN2v3SDaZAG36Gz/qdgGAKFuV5NGdyCdg0BJHXLx7hBy8P1UslD7MkKrWFtiGo+2qwRg2Csu6BQsVQ+kaLKR59j9iheVVBl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(396003)(366004)(39860400002)(376002)(451199021)(5660300002)(52536014)(66476007)(66556008)(76116006)(66946007)(41300700001)(4326008)(316002)(66446008)(110136005)(54906003)(2906002)(64756008)(478600001)(71200400001)(7696005)(8676002)(26005)(8936002)(6506007)(186003)(107886003)(83380400001)(82960400001)(38100700002)(122000001)(38070700005)(9686003)(33656002)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXZKNHNJODFzM3J2cTFxRW5nQ3plZW44cWFwTGNTUUV3VTk3ckNxUEc5NWpX?=
 =?utf-8?B?WFJRSlY5UTRYTE1ETnNla3h2cHVBc2U3RDUrcEc1L245WC9qdkt4RUpsWXQ2?=
 =?utf-8?B?eTRMaXZvOHYxOTc0RHpSZ3NVdGVERjNtZ3doNmlUSG9TbEM1cUYrQlZZM3Zk?=
 =?utf-8?B?eEhpZTdrKzUwV1ArRjcxKzlsMUxsY1plRXorMUprdW93UHdwL0NlTFdJUHRx?=
 =?utf-8?B?VjhHL3pRR3ZkSHZnY2NRTlJwQjhiUmxvV2dhRnJLQ1FGQnZvb3RSTTJLdmZ2?=
 =?utf-8?B?aGJJVnZndlFqVmpwUXFBOUplRGdabmoybzlxcEpNYW5DMENWclYxZFFuZ2wz?=
 =?utf-8?B?RXljS3VQbWlVaWNXUk9QYmdYMlFZazRTV3MwT3RjTVQxaG94TzVHczNqb0Jj?=
 =?utf-8?B?SEdIZTNQZWZ0S0VhSnNuUkgyYkgzWTZ1QXJ0eVVlK1d3NWIrcGVQZjExM0pW?=
 =?utf-8?B?N2tyaW82dHRKM3pOT3JiN2RHclo2aG1oL2Zqd1dxU2pWSUdSY2psMEw0cXFR?=
 =?utf-8?B?N0FWSkxzL2pNK0JBcmZ6em1oc05jVmxUaXBySXFTOEFoaTBDc2w5VXVhUmcr?=
 =?utf-8?B?MWYzTG1vdXhMMXRBM2JYVlFFajNTQ2FzaHVZMzNuTW1BcThmNWxJM2x4dFhI?=
 =?utf-8?B?MkhwZ01lM0VEeGxVOXZCMi8wN2J2Y1dHdTl3UFRyTGJ2alBocnZ1dlJXdWVh?=
 =?utf-8?B?WGdlZFhpeTRzZ24wNGRKbzBzOElkWkZJQnZVMUxFOFlIa2hUYm5Ba2VyYXdP?=
 =?utf-8?B?SDBpdnRmZ1F3b0c5U2I5SGJTcy90VkJCajV3RGdScjZPUjF5b0h5UmhVeXpv?=
 =?utf-8?B?UWJTb2E0TXM0TWFxeDRySUFadGZrNTZLYnZVb1FOeitlYkFtVkNrRzlScFNm?=
 =?utf-8?B?Z0MxeklkMnFxYnY2cDlKbFcyeGdWZWl4QmkwOUh2c0dBb0NmUlM5aEU1S2Q3?=
 =?utf-8?B?T3hydlczVk9Ba2k5T0lxdVpydFlGcXI3TWN6STMrVlBybXhTdlhSRnZVRUcy?=
 =?utf-8?B?ajd5d0dZSEVxSVRjcjhyNU5xdUlPVVh2djhkUUhUM2p4KzZtcVR5cVEwa01a?=
 =?utf-8?B?YzA4K0pSaU5qclB4TWVHbldGeXcrcFFhc1Rkc0pORHJWdkxvQ3Q0eVorRWx2?=
 =?utf-8?B?M2JvRHAyRmJXKzkyMXREN2FMRjZnMXd1TXJrVGpnNDhUSHVKRGFGWVJmOHV0?=
 =?utf-8?B?S0Vncm5CYTV5VUc0K0c5UGh3Q08wY2h2eCtrNkgxVHNwSytqSU85WVR2RXVr?=
 =?utf-8?B?TkNKY0JRT2lFZmw3ejNjMlZBbjhGdzlKcm5KTEhYNGtKS0ZSTUVBVEVVbENH?=
 =?utf-8?B?cEJTa2ZlQjNVYXJUUGt5VTB3Uml2SHhzZDVkOU12dG5hL1JhZCtIVmJqNFFs?=
 =?utf-8?B?dm1saENMNVE5UHhPdnBqWk5ISmVaM3BXZDYrQ2FTeUViR2RERXlxMEN2eTBW?=
 =?utf-8?B?QUIzNGk5VjloZmx3SmNCTEdVUXovU0VmcEhJVkFmNDkzOW9nL3hROVJNVEJI?=
 =?utf-8?B?ZzgvbHRZQWJtWDNvaUI3VUpPaE1UNUkrNWhQRXZQbmlqTEtmc2dVN3AyU29n?=
 =?utf-8?B?bVRyY1ZoeEtUWVZnRkFEaXU1NFdHdnN1R1NXckpONGFDK2htYkJpQjZJN1dR?=
 =?utf-8?B?MW1VUzRzcFNrbkdsbmtBS015OTBHYTQyMWNOTHM2L0JJUHU3eG5ObFF5MmRr?=
 =?utf-8?B?MlVoQjRJTEhsTktvUExZeG9mVlZhMHpuZTk5Tk9lODNxaHNTUVl6eTRDTHNS?=
 =?utf-8?B?L3VFWjF5dzl3U2NBeDFGM1VQQTJrUW5PSFFZQWZhcmkzZ01PalZKcGZOdTFs?=
 =?utf-8?B?ZVliTVZlbWg0Q3BhTkZDRFhyVmc4UGdpSTlnbE9UcWViZW4xQWVpMGhiVG5O?=
 =?utf-8?B?em5LMExjVERGZFBMSi9EcEpDQUxFK0N6Q2FUc2ZabVdyRjNtd3lQNFhweUZh?=
 =?utf-8?B?T2VEdjlFUkFOdXNiTU1jMGlXbmVmWWwrMW1tTWxKQnpxbEluN0h0M241WjNa?=
 =?utf-8?B?QWduTnFoeU9RTTFGVFY4d21SRnVyTk13Q3pON3M4cENmdVQvb0UrNktmN1d3?=
 =?utf-8?B?YUFiVmVwR3VCRmN4RVJwUHFMTldpM0NXd3JlZm4zeFZ4OElrQktGbVBJcWti?=
 =?utf-8?Q?BhDDNNG0Y52VQPYfoFptx5dN8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0501e294-eae5-4930-924d-08db91ce1c6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 13:57:42.9219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YUKk3SzWm1FF2jLYUM9k8H4Vk9DEhsJrhc58aXIAsPQAzu1SgRiMbsVp+pl/EnAt0S0/SVB4cPgSdJEsvd0dIoFhJen1i93mtGqcAC+rgYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8212
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690811867; x=1722347867;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iFIUuRDdmDRfX+cNwyK91ImAF4/+ZUITGNP5R319rdk=;
 b=dhrd1tX0KyQB1am0qUCjSBLluem6zDcpRPX3jBBmPxXj3nCy7y1pX+nb
 YllVaJ97gcfw7T8hoy6/voHcBfbrGOpp3hiRN4ZNEcSus4LGQRZHkjvKg
 z1DWrizMnkhaSPVqxvudFfC4C/HMdTWiAik72EwdS8JTdB6J75y6VTiyg
 CaV2kPV3JUtpaQF6iijNJf26pS8/WJz3U9em+35VQrhQv0TpVVaGa806k
 hgsFX9l3eByif9i5/ma1X2Ebz978WHcIPYT5XA4x9yPLf2iFJJ/XVEBTI
 9n+mkbxk1vFQRhfisLotxf+FGYZ7SXCCCuYHNrYILYIVTLOASrgCEu7aY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dhrd1tX0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Clear stats after
 deleting tc
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brandeburg, Jesse <jesse.brandeburg@intel.com> 
Sent: Sat, 29 Jul 2023 01:59
>On 7/27/2023 1:43 AM, Jedrzej Jagielski wrote:
>> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>> 
>> There was an issue with ethtool stats that
>> have not been cleared after tc had been deleted.
>> Stats printed by ethtool -S remained the same despite
>> qdick had been removed, what is an unexpected behavior.
>
>qdisc
>
>> Stats should be reseted once qdick is removed.
>
>please reflow to 75 chars, please restate also as
>Stats should be reset once the qdisc is removed.

Sure, this will be corrected. 
Thanks

>
>> 
>> Fix this by resetting stats after deleting tc
>> by calling i40e_vsi_reset_stats() function after
>> distroying qdisc.
>
>destroying
>
>> 
>> Steps to reproduce:
>> 
>> 1) Add ingress rule
>> tc qdisc add dev <ethX> ingress
>> 
>> 2) Create qdisc and filter
>> tc qdisc add dev <ethX> root mqprio num_tc 4 map 0 0 0 0 1 2 2 3 queues 2@0 2@2 1@4 1@5 hw 1 mode channel
>> tc filter add dev <ethX> protocol ip parent ffff: prio 3 flower dst_ip <ip> ip_proto tcp dst_port 8300 skip_sw hw_tc 2
>> 
>> 3) Run iperf between client and SUT
>> iperf3 -s -p 8300
>> iperf3 -c <ip> -p 8300
>> 
>> 4) Check the ethtool stats
>> ethtool -S <ethX> | grep packets | column
>> 
>> 5) Delete filter and qdisc
>> tc filter del dev <ethX> parent ffff:
>> tc qdisc del dev <ethX> root
>> 
>> 6) Check the ethtool stats and see that they didn't change
>> ethtool -S <ethX> | grep packets | column
>> 
>> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>> v2: Make the commit msg more detailed
>> ---
>>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
>>  1 file changed, 5 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> index 29ad1797adce..e8e03ede1672 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -5885,6 +5885,11 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
>>  
>>  	/* Update the netdev TC setup */
>>  	i40e_vsi_config_netdev_tc(vsi, enabled_tc);
>> +
>> +	/* After destroying qdisc reset all stats of the vsi */
>> +	if (!vsi->mqprio_qopt.qopt.hw)
>> +		i40e_vsi_reset_stats(vsi);
>> +
>>  out:
>>  	return ret;
>>  }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
