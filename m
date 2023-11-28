Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EC97FBCA7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 15:22:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0F2A416D4;
	Tue, 28 Nov 2023 14:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0F2A416D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701181329;
	bh=Fi/VUDMZLGwgzlQCh06/Pf6BO2XKl/LNxuKF07uqU5M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7CKnNnwm9oQnAP/wbWvAoJ8WqToL+zIM/sKnnZvwwibCXqp0USsoVIEXznGzXBu86
	 7yNZxWZvi8ZEG+7gM2JKt2k/SVjyWlOwt919pf0K+20g4+8lcmj75JZBc3NnyhzOzu
	 FsSAHTPuGFXR2IubsioNbl9N0NSEmXpnYSEEfwkUSDCJ/IxSjhpObEEQiWEN2ydkRh
	 ozEQbiPZC+onYWd1pRt8Z/PPTSEotdDQ42RGoV/ZcruW74efPZGMmuWt/jqY83EZoF
	 VNBfKBrUAWxAHi5Gn0t3mHJJcYk/Z55NS+DxIYi00fwXiFaSJU/mxvQCevasytUMWt
	 SI0Q8tsYy3skQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fDK2GtrYGmnO; Tue, 28 Nov 2023 14:22:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA00C416BE;
	Tue, 28 Nov 2023 14:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA00C416BE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C32E31BF2C6
 for <intel-wired-lan@osuosl.org>; Tue, 28 Nov 2023 14:22:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95E82416D1
 for <intel-wired-lan@osuosl.org>; Tue, 28 Nov 2023 14:22:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95E82416D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0juNHiQAtpoW for <intel-wired-lan@osuosl.org>;
 Tue, 28 Nov 2023 14:22:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20399416BE
 for <intel-wired-lan@osuosl.org>; Tue, 28 Nov 2023 14:22:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20399416BE
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="373103402"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="373103402"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 06:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="768537539"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="768537539"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 06:21:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 06:21:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 06:21:34 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 06:21:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLhdcMnUMCDTKmtMwkGj5uAqWWm9OsBvX9nLctVujmOE9bzMrDrWxOO2qisEctiDJYpgLHyCLYW+Rl6ImU4fXlqiz1Hv+7bO7ctE8DsKZ/n7VlYJ53kmpNzvUAFGeto1ih/GBEuC5Yn/8IQ8m/WOQUI0N1PPFK9JrXi8NaJbZdozGGosi9HFq+krpVIzts9HlIfPH/pqHY5oxItqU5AN0wMEAXMz2NZA/ND62RadmlpvcuiW9PORZZrX4oGNSz8VO6k8Ucb0tfKcYRGbAdh1KOT5r7Xa1XzC48AaSwjwJV1LY3ntTSOmUwzE+66OMG28rWfdGTkZ1Zo04/yZ54sLhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NyIl0Y8YZW3VwMeGniW/y9fVhpXgM7/eyqcPAiWSlNU=;
 b=U2xu6pthj7Jcwu6OW0ODj6eUyzHKdBqWGfOBHu5gosNFB/wzKbuo6ire6HUO8xhcCbklsAyzVBCdRExMB3NzoMNbC8GEy7EYDUtLO8i+bSt+v9JQdTa5NdfLJFR34WWHWdj5QD3Gfw91H/IzwzerlCxTsvfUjbS+TC8S/4yC8cZaZXzfQoc773bLDE7avIZXaRQaf+kVP47Fw3dzRxqcq9RQcKCnei7IOV4Q/lF4We5x7zfmk8yDUzEQ/cM8OzaSZFdYMoR9hKH7SyFoYJGAqNst+cYS6MSiKiIeL384NZZ8g+ZUIAZDKQISxmL72C9KvfWqkqfY3MtGKpofFoWSnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS0PR11MB7560.namprd11.prod.outlook.com (2603:10b6:8:14b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Tue, 28 Nov
 2023 14:21:30 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2%5]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 14:21:30 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kaminski, Pawel" <pawel.kaminski@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: Improve logs for max
 ntuple errors
Thread-Index: AQHaHBqbdqh9MLGBG0OmNXgggNUh8bCP0zzA
Date: Tue, 28 Nov 2023 14:21:30 +0000
Message-ID: <BL0PR11MB3122A816F2B90D0D9C7D7AE9BDBCA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231121013206.2321-1-pawel.kaminski@intel.com>
In-Reply-To: <20231121013206.2321-1-pawel.kaminski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS0PR11MB7560:EE_
x-ms-office365-filtering-correlation-id: b3dac68e-64e0-4a49-a4b9-08dbf01d5114
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NXDAdaWRxyAJY/8bQfDe6YqVOCh+P0SfMmavSrWuGmi9HICFYLjEltdfZB6sUNgnsE0wod3PpPztJBfm814QvZqqPlEwh7nf3uTLMN61sXaUmLUVith8BTKBoA457clj7rGr8vSeJsCApaiy5Kx3izvWs6z/NwAsX2O4raxsW8B48rQENon+Dvzx6JfhtGvVrN5/rdJC/Ow6VyFHFFxYRBoHnApcHJN46AVu9qVQMctn8Zo94wPMylpotBX5/HBu2Phq1Gn+zJzXQmhRRRZ86QhAdcG21nic3WIej87VNpvkDDxztcnnfZiJDxML2qCvgLIhed/TuxY/E6lsNiWWtXXWC/jImvu9BcMkg5XBgfFGV/K8uaGU9dJQUVpjQiVrnVCQbQqv8O4l2GVHXv3eGw7H2aInp2aC0qGREptZpTOPQKzvLMhiZpJksggEmdwXWWXw0bNuhnzKomn1pp6JHHnf+xLrvGW4j0G8S0Lr9I2lnIYWavmAorEW5a2rji0qUMvzB5YMg4ASKoeGdqZZdCONCyZXzV5OpmdqBj9NRyo80zum7NWeJgccz3v8B9hFLg33Z959HEONZxBWpLOOBDXMyCKX/L2zPfj73oESLGueElLD3eSexF8oTG9CMjbO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(366004)(376002)(346002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(83380400001)(38100700002)(122000001)(8936002)(82960400001)(55016003)(7696005)(9686003)(6506007)(52536014)(71200400001)(8676002)(76116006)(110136005)(316002)(4744005)(66476007)(66946007)(53546011)(54906003)(66446008)(66556008)(64756008)(86362001)(4326008)(478600001)(5660300002)(41300700001)(33656002)(2906002)(38070700009)(107886003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p6hbnZyQjGmZywFBER/kOvxruthwvFFOBDI594Dxq+RF7KCZHKwD677vmxnk?=
 =?us-ascii?Q?Pz7qwpLrZ4i+tHqYNrPVNli2wfWVAoMU/deJ4Ru4ZYrhJQ/KDQ7IpZgISNgP?=
 =?us-ascii?Q?xnE7GAwdKEJ0TaWhYuFB9rKtS9qdbEe2u1sbC/Mz5GWQSrI8w/CuuGp01hj1?=
 =?us-ascii?Q?MtKAbssb80/XdsBrSFFsh7p3Rghzk1juEFpa6xYErLsuhEgnNKLuGWiwxHvI?=
 =?us-ascii?Q?vH+BNrTz84oLe+Z4uOQksNgSwkQuXmUqmi6mt6dyxN5UQa6gejawF6ZglylO?=
 =?us-ascii?Q?7drugBnRRid/Oc9TgHiRXC/R4bMa+hA/8JQk5wtPV92AtONOX2wyIMngzC//?=
 =?us-ascii?Q?kxn12Do/sZsvZQ6iaYDQ7Z4bNlrkRYkNOqnL4eFZ6bg8I466KuXwTmPSdoMA?=
 =?us-ascii?Q?XLr+Hf8qVr3Jwa+UeBQUwbVzMB3SCvxgyUgUV0GiaC1VyaejGsHoZf1USTVH?=
 =?us-ascii?Q?gR1a79tPIm1RfEQIlyqwGjGZwHlzT/vCGbvlF/0BUTekJv9r2/vxUvA4NzCs?=
 =?us-ascii?Q?q9rl6delZ8pIabgTfwijsajHj5ks2nRg4GUWg5ddE+2VvvFgp4LXjYf0RBlY?=
 =?us-ascii?Q?D9LapYK58C2q0B8wTOhNmkP3AQbv5ABuzUcUDcdIAY34LNgeEJHvob//idBU?=
 =?us-ascii?Q?yC/24eEhsuRihm1pdTTuwoWQxIIlCH2pSbkQZcRqgYF4AoCwf64goFOkibNS?=
 =?us-ascii?Q?j5nxFgHcj5L1ac6HzABKU5krC+GoqmdINh4kONddmSvnrHJUJLHKSXfvyJwF?=
 =?us-ascii?Q?jluAi287XXZqWjNwH3pndLlaX3UK81eHL5QO7AcXM7wDkmx6Hd8bdEJxFUFW?=
 =?us-ascii?Q?weWUpzuSZcLnWgMEVJoGSbxnd5RzEkR9G3nAxP4NyVmiMPFAFrWrB0qVUiSe?=
 =?us-ascii?Q?Rnl9Qm2ThqfV8OjAKv3O58qJqnHQ303cr5K71ZbXvyICIkFtsqYGeMoXDcRn?=
 =?us-ascii?Q?979owI5n1SoyXZtml+5ODFyrNwzGjK2O88TrNZsY2bbmWry0/fJfn/dfpB9K?=
 =?us-ascii?Q?+B615cO2mwJ+0Uk9J9mjq+Ijq09gOpcWWUbeU2X8zcHGdSKXV4Ob/JWphXTd?=
 =?us-ascii?Q?vHDGnbQ+EKkgdk1NxBk/pwy5UI3H2xGtnPXU4vWc32lUZWqMzAw4e+EzJBwy?=
 =?us-ascii?Q?zs7QQbH87C+qxWgGf3K5y+Jw+Qo/zL1vBEkBaGHwbKWj5Tf0Y4Z9ecrD+XGl?=
 =?us-ascii?Q?N8gHKdzfbe5SkcHKJAbjuWxKZspU4AMU36jDSj7Yh3USP/anwHKmXvd3M+rd?=
 =?us-ascii?Q?nqpSI2C0q+o4XvQZ71vrjH3d3UCJvzQg+hNpRE8wMJ1+ot9wFJG1ObyvCJsi?=
 =?us-ascii?Q?oStx+6U1GYGLI3f3LEBcooI6eA5Z538PYb5QsKARdNCHrxB8vUaOKTMjFFlb?=
 =?us-ascii?Q?qw7nyCiPBYR5kYZq4FFbM+UOOgucaKpsDJOgLciIbf/dWT09yCbaqyMnKhZS?=
 =?us-ascii?Q?8BDH4o26Q4pG50D7ylo4+P4SNeyCd54PxhOqD+HNhygo3S23NGLL7ncc7Y2U?=
 =?us-ascii?Q?C+pCx+19NFr9XbUPhln8oNd3HtqKbkoJjrhGGbtfCAj/JP2dsH177sABvZ23?=
 =?us-ascii?Q?t4mukulPAWzy+isWDGF6KnNl+rTWrXusYPTr/JoYL5nSoX4X2IkpvG/viZQl?=
 =?us-ascii?Q?xg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3dac68e-64e0-4a49-a4b9-08dbf01d5114
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2023 14:21:30.7733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L+pyTp0zPR2fluKSDYrF/ec8x5xCSZmMvK8PC8uUhJhdoE2/OBJN8IOU8CMRGROF2qEbg/TESXNTWvkjqxh9XOMrme/MsPLfBw0arQCwhSrgH1++wTSHpXT7Hh6NuSZw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7560
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701181322; x=1732717322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C+CN9CKNvBkasRtJogfPk9SdhfJYkLx2/YMpdF/UJ+Y=;
 b=RF0HvRDNq8fau5uj6CvY6e+a3aFqB227Ra6XWntJJelMjyKbslfZHfcC
 F7wVcOajPzY0wJLPKSaKb0/QYL2wbp1Zv2oW+GNY4dUeLHZxY4FxrJVrQ
 iX2Yej0A9AFnCypWeokxaDZW3ppDRVkuxQPHzZ5bu7jzdjZEVGGlk50v9
 MY7n3ueNFtH9nIGMKnL/rF9St7NRT7AldMLOTmpyrmeDJnIMRUL8O8mj0
 48YDbfreCUuMrhci3ZgzkNC0zBBytblwe037GFRr05NKRUo2jDlVkWN22
 UOubjZRPyRsA8XM1GUX7tsK7P2V8xJc7j6vh9MQG2Fs2MroEuAj0Paif9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RF0HvRDN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Improve logs for max
 ntuple errors
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kaminski,
 Pawel" <pawel.kaminski@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Pawel Kaminski
> Sent: Tuesday, November 21, 2023 7:02 AM
> To: intel-wired-lan@osuosl.org
> Cc: netdev@vger.kernel.org; Kaminski, Pawel <pawel.kaminski@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Improve logs for max ntuple errors
>
> Supported number of ntuple filters affect also maximum location value that
> can be provided to ethtool command. Update error message to provide info
> about max supported value.
>
> Fix double spaces in the error messages.
>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
