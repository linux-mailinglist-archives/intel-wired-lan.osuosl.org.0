Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E356C353C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 16:12:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18D8581FE9;
	Tue, 21 Mar 2023 15:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18D8581FE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679411534;
	bh=fT1KO+jcZ1KK57gpBfSrUgN0RqMNITbZWQH0KBxV6e0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8lCQu0CHcW94A+sVrv30E+s/ttZknY2DyE4lSFW16txp7k5ZRLvtS0Qk3ip4/Xh2Z
	 md5+9JG72Ph7BAx29wzz0eQKDCn18me+MWn6ixX/s2HeRTdeVLwpwOy4zSf4DUU2V1
	 uO7U5A0yIO+bVNeWFiEOqPNexu392oSIC2ipaVknAVYTsUFLy0EBXqFWI3pREoksaB
	 7GPd1iDtzgmtehJ3Z0yj9IJ5GSVoiLjJPlE4USLhw4r4Tb6cXyCKlxDgMyf5fUImUi
	 Ep2i9pJNL+LeWXr96qt0IZdgtiTkqtiT3964uW+PfRZ2wVXZIMggq4pfKfrQ5zZRLj
	 UVj78ZKI7Y1jQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5QW4qzVs4FBu; Tue, 21 Mar 2023 15:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 184E081FB8;
	Tue, 21 Mar 2023 15:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 184E081FB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E08B1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 04:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 326CB417FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 04:45:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 326CB417FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l1FhTEOh4c_o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 04:45:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F936417E4
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F936417E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 04:45:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="403719811"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="403719811"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 21:45:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="927259287"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="927259287"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 20 Mar 2023 21:45:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 21:45:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 21:45:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 21:45:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c7325OExEcKrVUlTfs5SZoh8r6+RPCjqAuGtrh5lFIZv0o+kZTQZxA7PM+bPhLZshnl2g58528sWz+xo077moTN6lK7ePiQjaDTHUKYG0wf91ty/BFEJr8NYnpfS+6s+6J8FC0j5ydEv68IydFz9N9vYleHjYk9z/sfSlMQaotehsMuno807fVrLKyhRl5VkfEwbT39ssot9Q0Un06TSKygnBaXOLDtWY8KdGdXlmrFd+RBEP/jwT6f3FjKFNxg2eXRr03f7ybd0Ff8TlY38vfwvyv1zn98Xhoko+m15dC3wL8EDosEeluVH7DiE8DHEJzmU+vOd2ManU76SM3HjNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bzLUje3Lbxz+sDIPIo305gbddASqdoOkc43RosypMlo=;
 b=NPJ8xLBVr18p7NpoE8/us7MIpFmZr+JL196UanoJHUEptxuRi0LedW5BfgZ0ddZvEABz6XR9mi/dHus27wNe4chjqRpMfHYj8UZ/QUHmHzpoHyqhoFkv5Nb86bksS5J5342MB+BwqJGuqlIHhzJjeyEong7u87VE/b7nCbLmWAG0JwICDD2wwB4T8MX1jZQT7XSIli85pwrFu5rmp84ZO6Z7604xDWfilQOEc7jZDyJJEiWtNdf6PBXvHGQah2wNBDiK1PJ9/FCt9LHnw8g0leu4978W8yUzNcZ+V4IJ+GATAjiL8LNZAEyxntNZetfYJVOSFaW7Vbup+bnnoarS+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by SJ0PR11MB4847.namprd11.prod.outlook.com (2603:10b6:a03:2d9::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 04:45:11 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a%7]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 04:45:10 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Tyl, RadoslawX"
 <radoslawx.tyl@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix flow director packet
 filter programming
Thread-Index: AQHZVbWIHEvZuFuutUiCZN4gipLbOa742PsAgAvaE5A=
Date: Tue, 21 Mar 2023 04:45:10 +0000
Message-ID: <BN9PR11MB53542FD36774E0718DBD74ED80819@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230313140733.4140757-1-radoslawx.tyl@intel.com>
 <ZA9ECCdK8uShOKib@localhost.localdomain>
In-Reply-To: <ZA9ECCdK8uShOKib@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|SJ0PR11MB4847:EE_
x-ms-office365-filtering-correlation-id: 5e9d2533-8502-4670-0404-08db29c70db1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZBbc2NUA1gCahIu2lNDs658UoDUyR0yBiIrJOBl2qgrWDZkdh1SHfueu0VAqvyDXsJAhFVNWjue+/Z0azM9M9A2vrj0EfXUCW3tg4RN2fYBSBsOgwQtPzg9zqATvGCO1OygGQM6ZnUHifa1h/GlSRJ9CvsOiyAiFzxjpM47O4FqFLQakUQ+hu3zatQtIgxQ3J5sqxeN8C4X92GRj3pZisWM+kUPHjVEHC59yLdEkrospdxVgPzFsY6qRCtpISzCQmqhlina2njl1MYLpBPEW4THo6Mhgk5Ex1jv53cOKd0IM36xNHtOIxH0M8+1fB0XDAX7TQgO5Q7DRRzbzLjDdVgrIWa9CmJ9RJKOKBxR7GwG9qznNR8keOS0HW6n+Xm4RLAiVIlyEelCRr9huC820Qgk3ItdqI9FjL2D0guYS4jjDdw9CdGsQRT4VQ5aUK2C1mGxdUB1DoWRnGWsp3Dm2/Tyx5J66zzOLkEGPuiipEUgfa/ZFrS4chT6JVqJ6xte+SzCHkcuJAHfQxwslovF02VZxRwmAzki24Mk8A5AdjJeqUYpI8dGbPa8nsljwANFSycEokO5QU2ZdtqIjBS6u4KlFj130YkWzYKySIRzkN2FpL229PW1uFn343ftkeWoLlyZnmttc3PJQnUXa4oyzMg/IQw5d2HTAnhJNVIPI8cHOW92moeQesS4DFdC+gOb+KnTR6R0BM5mFDHREUAS6Qw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(396003)(346002)(39860400002)(376002)(451199018)(7696005)(33656002)(5660300002)(6506007)(26005)(86362001)(71200400001)(53546011)(478600001)(316002)(6636002)(186003)(9686003)(83380400001)(110136005)(66556008)(66476007)(66446008)(64756008)(4326008)(8676002)(38070700005)(41300700001)(52536014)(8936002)(76116006)(4744005)(66946007)(38100700002)(82960400001)(2906002)(55016003)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?COh+F56VojKLnq5memOExdFYxS1eTfhKooZOR8wfv/J2+STMlA5HqkhxBmbN?=
 =?us-ascii?Q?qIL8JDmcNvokCTNwq9p/FFjTs3AIjPfZNDkeLpDqCYU96vLzCVIda+16mK4q?=
 =?us-ascii?Q?02H500pVKOOhN7l3O1xWUyr6jIRVot8fhe11O48ILtpfTVYM4YrddQzLtpKk?=
 =?us-ascii?Q?/RiZaSn6ZSHuj6Y1jf50QmdT0eSODoXsO75B29lGo1sBMmVcefivF7h6clde?=
 =?us-ascii?Q?w3O2AxNE6UrQTFkWudd5JcB44kprGcfMuZ4nLgEHxUov+WtGEGHdXcjqNEt1?=
 =?us-ascii?Q?7jdXfOCkn7CIGWZAasw6y4VQdXnZADDPW9HiZ38EFA5rjTPDV/W8XweBwrh4?=
 =?us-ascii?Q?IzRsnW5E82h1fFPdhvyediZ81srUDBKHQM5fGPZWS1w1A+a6Kl3F6OVlcfNu?=
 =?us-ascii?Q?YXdDSDaQmF18j4sch/A3wp0tKw78HyaS4y4kYaUgx6bkoIBmLHkATuMngJrQ?=
 =?us-ascii?Q?68xDb6ivFbEptssFFsg0sAmGzs+rUsajrwRVh4yTugoxrr6s+/FgUwyiRw6j?=
 =?us-ascii?Q?gGRu+Qx7vzvcrPjpMiWLmOFankaBbSXnd8h1wbbhHUAlubpdK2PLtoCYtN0+?=
 =?us-ascii?Q?ZdB8z5RovasJ+6e8xv35OLRgN7/eSofEIMQmXDUyS6qlQ6kD5e04VdEPu3mB?=
 =?us-ascii?Q?02Ye+E/D5ukEqCCJ+RUCZXyrAuuahJRcI3959gNeu2COp+CfwoklnKvVz4SR?=
 =?us-ascii?Q?P8PlPo4Y6FWsqyoHqiseEj1a3flwbfanR30vdV3Q3kruWUSYA6mtPg7i/diL?=
 =?us-ascii?Q?Be1YFc4JvatPyXAdBz0lrzY41JWOPB2GSQwBXdRbjjfnZyUa8Ch5y65W0UyC?=
 =?us-ascii?Q?pqwEuwwrpaGj6cQ3VqqWLDMEG0BVfxwwM0SxYZ+TvZmceFo4SItSqRzpzxBm?=
 =?us-ascii?Q?SwRucqjV6lUMp/yGfLNJnVDHNWghglryRml0W91bS8yDWd0+qDH+jR+XaJLc?=
 =?us-ascii?Q?z0uwHt8UmbRteOuUEUwjP7lDS6ON5l2LckHW/kE6mFQHOuUGGnhkZpyQpcN0?=
 =?us-ascii?Q?pbaAxWYgK29tza2Bua/zgORXCGAmFkkIcSB6ehsnbScTQVLEEe14+lP+W6/m?=
 =?us-ascii?Q?+4fHNxbEVbuISQSulsukndWSL+gRWmlK67WKy3gfp37HA8od+wEcYkGU8Ov4?=
 =?us-ascii?Q?sZVZQ4gyMVygdzGaveGfkJZDbyGrS1/kddYgB3PMkY0wXhEw704i/Wx1Tot1?=
 =?us-ascii?Q?lrb81sD256RqQFFQ9Pi1vdRg70QxEk088fPRgwYBWtVwtXy8lpJbPEhlr2QU?=
 =?us-ascii?Q?Y1gVF2BkeV0EvkHyJBCJ9NPpAiyTduFjcexo5DbEBce6og8vpKfuxwrh7BeR?=
 =?us-ascii?Q?ImTOPmKfLm6m0RF3XUy5DH2cXOuWEqnQvCHnN3Fuy1G4SHWTF/fan4H+kWBv?=
 =?us-ascii?Q?aqt0TU68O2SPRnxOa4dDV43BYM9WNsY179AyCwX+bMTzoRzYW6zw00gvtRnI?=
 =?us-ascii?Q?ZsqsBn+Sj3WbqchYz7etaX39OiXyQE0Jdo8Dbmy8k2MPEgJEJvDEcRp5xpOX?=
 =?us-ascii?Q?fNLMtZxUDEYjuvTxMrrdE+mpoEwTA6qmygcRFOBAHdoe39WwaKq6cFxsgyjG?=
 =?us-ascii?Q?MAfGPKlx7nMbSg0OXPKb4Dsd6E2NrfgFx2gXvJ75?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e9d2533-8502-4670-0404-08db29c70db1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 04:45:10.7524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HOdtjAGTdQJwpR7m/+sCn8Jf8eustSA0WG7NbI8azx6YwYL9RlGL5b2/opB1LWs42g72wBAha0L5KMIDZnaJfD0fn1bwjWEgLHbXzmImO8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4847
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 21 Mar 2023 15:12:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679373915; x=1710909915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=19T6Hpnoi7aX/0xn/96MpZWjFsiKGl8HdF3lLFRFvdo=;
 b=SmgsPG+T7FlIyY+3KOft1Rv6LTLKrGF1CJq36afFWxUEzH8yBWpcxrWu
 DT2oK8+78JjmvwMJg6USgnP1cGM8jVIYwk5Sl8YwGJULsSMEDZf1M0eYg
 094cJmmzDMaJA/ELW6TiKSk9wXLzEewHMMaMj+VMPf8ZTJ4cSotd0yoFg
 OMIsuXHIGq5ujeSCPL6AlTO2ShsybA3WCFCXUelaJYrglWPHKcIyqzl6c
 9+x0DWO6ab01Gw8Y4E1ZINxS+MkuNYhLWzmDIfl8lYQ1CZHKytNO34pjE
 +x7WAWJY7VY7cgsg2SwoPLPyV9EB8jO6Xbei682rOWd7ZyhwCk2fivAl0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SmgsPG+T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix flow director packet
 filter programming
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Swiatkowski
> Sent: Monday, March 13, 2023 9:11 PM
> To: Tyl, RadoslawX <radoslawx.tyl@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix flow director packet filter programming
>
> On Mon, Mar 13, 2023 at 03:07:33PM +0100, Radoslaw Tyl wrote:
> Initialize to zero structures to build a valid Tx Packet used for the 
> filter programming.
> 
> Fixes: a9219b332f52 ("i40e: VLAN field for flow director")
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
