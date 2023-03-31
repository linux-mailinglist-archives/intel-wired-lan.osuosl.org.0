Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0D96D23E8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 17:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60DF7846BB;
	Fri, 31 Mar 2023 15:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60DF7846BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680276351;
	bh=agzWOhrRNH1bMO0lKoIihB0BUzqAP1RLlsLAickmp0k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vFedrFGvlJ9kEExNcGeEFP7oubmrtfHlCSsa1f8PEe0AdNIDGk78Xr7SmKkQtsTk/
	 p3IhXXPeSsL2IfKInXC5/Lx8Mnn5myllBA002Jgil/6ig/HHFhUAyUQvgHkcr/iqRh
	 goULgaot3WbQwjMfir69ocucxrq1VKM3ZK/BRyVNWqs76Oi5ikjzHlVbc0lEp8KEak
	 f5wkvFgCBOdZCcw18yB+zsUYXuE0+hY4Tm066m+QcJci4/GLxV1p8Lld+590VZHzTE
	 G/R6iiKcTp+3qreJDvBHePYAzLLn7XncFeGWZPivVonVUsGZ4n8o+SLlNVY1bliPlp
	 XKcI9OBiluocQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxXGVsU4yfUO; Fri, 31 Mar 2023 15:25:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45241846B5;
	Fri, 31 Mar 2023 15:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45241846B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7D951BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:25:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C64440347
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C64440347
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rq4VIzWnqlt8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 15:25:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3251C400B8
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2119.outbound.protection.outlook.com [40.107.95.119])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3251C400B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 15:25:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZC3sq0vKPF7nYxjkYchOUbnI6zsd/KkNZyrr7jiHpL1maQRs00myqXr6sni0f3I6VkXeMht4x+o+1hKqdJ6zHKT61Yy7gCSxh6Ir7VrdSA7KfNvWeGPFdOZnqMgZcvLHb+wqi3LpeXWuriT99r5/Xk57/F8PVA0rWLYghe4Nr/yuMMOBjFgC6y5qGRSeDprg07P00xCos75p6R81WWxlPpkrPXFr/Q5lafu0wOciQLMtcNq/AdlLJPCyyDmmSXS05PA09hiPaJXdSiXHckBKYKyPEldPkz+TJVZWzATzEruQDx05WOOg0wypFtj1NyIk/go1rMXIcsUpWGs39nNDUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LnOO/UwKSlta+Isnjh6QveYWddgG9PYLqV2STr6pWF4=;
 b=b56DU7+DVP7TTlYrEZBqlWyx4IpKCrVV7NavQBvmzdp4PhO1V4uoQp19UVbz6VyvSeU5O9zUy/P3vDrAISIfcRswON/MvoVcSeGV4gLOH99lEW6AaIOww/FJgHHTpFRbs2WhkFdeXHJo6V/A86ao5WAWnsiZNA3n7o8iSLD54tLfAkxnm6b7bbMkReHwX/dlRw4JAEnP5KCCQzXj9g1Nagd5e1QsXWR+aVYTxUnSp+dgmK5REEJSx/iq0CF7jRV6suxL1vntHpRZbAZmH4IQYBEAp7U8BX55HKOTYAjEf1HBCMEpYFTQNHWVwZmTnSgCiuyoiv+izRGcif2aqyrkkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SJ0PR13MB5426.namprd13.prod.outlook.com (2603:10b6:a03:420::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.22; Fri, 31 Mar
 2023 15:25:40 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%5]) with mapi id 15.20.6254.021; Fri, 31 Mar 2023
 15:25:40 +0000
Date: Fri, 31 Mar 2023 17:25:33 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZCb7bYpIbxvH7Yvz@corigine.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: AS4P251CA0003.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d2::9) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SJ0PR13MB5426:EE_
X-MS-Office365-Filtering-Correlation-Id: 14dc5316-f108-45d3-8f67-08db31fc2f72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5FSBRmp1PhzS7bk6JDEa/PJV/LbUUHnIzdM1CMV8PLpLAXynIG9BL18ypkesdV7SFo1HVPdPCE9NST9FQF+3HWLouFNfq1eqiKzONHdlM43B3YWvpOoWgrhDqPF67t7gTg8/1DXcqfWo7GnLhYCExx58N16ufrdT4W54XTzqzFcF4wT1ZX3ahfaoeVZHfyFrlaFC39nRaPcCZuVoznDuRl9gnZAX7CR6uGzLqBdR63IKgeqgOpq8yefx6xOuQUsrred0IPo9Pqngpnmg+CvkwA1SmLlgjMNubTnqt/lOsiwFoVWaGmhsXGVJUkRiYW/lR5/N8EMr5MUtHzHh5VdbL7VXhKbpbmzimx+96iUIveCOisow0MHFEx3bhtIXvZ6nDA/aohmidsoF59Kxy82NJSoBsx3cgFoSHJBXIMUDCV/7xuGFD8ZE9rxcylIRqBe8MYKeDfvK3GO7ehR/yLzltXD9ax8y8LwSF31m/W6rWRHQmss1k3G5gj+ydGcYPmES22vveKBY84XWDXR03WcbSrAQ/nCBZzvtg6+T4mlLDd4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(346002)(39840400004)(376002)(136003)(366004)(451199021)(2906002)(38100700002)(8936002)(41300700001)(5660300002)(7416002)(44832011)(16799955002)(86362001)(36756003)(966005)(6486002)(54906003)(478600001)(186003)(2616005)(6506007)(6512007)(6666004)(83380400001)(66946007)(6916009)(66476007)(66556008)(8676002)(4326008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WIfLImouK0kPRiYAUmOZJdbGdiXRy5F4xwKeM/YNDJPYlWL30f2xb7r2TlCO?=
 =?us-ascii?Q?b7RLHzq7S3ND0xuRrMhdGzfILqhEnJtF05C8Y7F8USYg1VTC6Wge4OumdCcR?=
 =?us-ascii?Q?u9ccWOFWOFSwzLYiXEw8OLEPMufGTF/1/emdPZNaPQ3F2BHMBqVM23ajG/fk?=
 =?us-ascii?Q?9DzOm5fE8mlFM0IAwPhvoVydl3j4MyuUYd0+fOIkrnN+LIIlgZo8g7FR44So?=
 =?us-ascii?Q?ZlXB/ff4L97M4VeyDaMC9Uj5IQq85EjQq7odDounbfldd2EOSOe39k23oxej?=
 =?us-ascii?Q?JwWwPE+ApPIvS9jTIrFB27dnxKqnJerh2lWPs/ZQrhEdfqb/Qac4UBgPpEAy?=
 =?us-ascii?Q?jn5zgEXIi4i0KKmc1KRk83Y0ofIUpzQgWQZe9Klk10J5NWuOSL2G/9lDjlTZ?=
 =?us-ascii?Q?tsmg8qXlgNN0U+s3xiuCB+bT1FP0I+gQ4jtrQU8HGA7z83biUeNKq5RvCoFQ?=
 =?us-ascii?Q?fV0RKFk308e7J1NMnDuvuCUHXyVuqhtF6kinZlBsLWshzf4Osw5yMrnSLI5Y?=
 =?us-ascii?Q?84hvH22/lQk0hIQZTpUASEw4QKYMeTDQhENzL5G/PRQwDajTBUvk2b12EL9E?=
 =?us-ascii?Q?cYTlf0OTnkl7xViqauUKUh1N7Q1oocjH1H28bicc4DqBCvQRDnVtie+D414E?=
 =?us-ascii?Q?6D7fTvlaBTVvnJAMy0FJJHphFegVI8QE64kl9yObiARCxxjzsOS4qCPMiQdT?=
 =?us-ascii?Q?k1RsgL4osNGfzrSkixblV8Z8RqnhCuQ21K0k82p8msY53/Z4I1/FJEhPC9zg?=
 =?us-ascii?Q?4EW1qXlwpupRkZBVuDpD0c8Zoy31uY2V0X9mocGzLWnDrpp2z+TJoqkTx9zN?=
 =?us-ascii?Q?bfwEfiLr/52x2EfCP4n9V13x53ZAfeReDjuWWYAhYDLi1a1q6epyx+ndtWl5?=
 =?us-ascii?Q?BaDw62e9iszIvf6fKRcZAtjWq3bBqbTjRQc1GJ/9xFOIOKcpFQI6gAkseqtC?=
 =?us-ascii?Q?FfoUX+4+lbDmFCvTwjr2uLBUJujSUg5YlppXqaIcniw7TiMweOWRz8GVvoxK?=
 =?us-ascii?Q?9WC2AijyvJ1M335xnpcAgcJcx6DFi0UOAfuci0KAdd35SljfLUPpSqJAn11z?=
 =?us-ascii?Q?fW9KhSmrAoQeDdrheCJ0uDNhw3D+sL1O/VgFvxZETesCfPKc5O+2rZnaHUID?=
 =?us-ascii?Q?9j1Q/cMq6HP6rNI1YaCeYrKduyleBChK/goEdFtkyJyWvZbt9bN95LoPnGdf?=
 =?us-ascii?Q?WeTVbc7YuwrDaMbNgjEDJPJDendwrBMesVdaVrpv7tO9JvrWypYVVVUv/6zt?=
 =?us-ascii?Q?bSrOucvaLTGdhWx6BdsnUwZJjWFS2faP/ohrv8m99f0kDZ0Asn/rxSNT/064?=
 =?us-ascii?Q?xUggzTfnDYP+AsGtZC490xKqwC2DArifOiiXhQYz7Uu5AJQiUjIvI9kPxw1S?=
 =?us-ascii?Q?7R4QEsJUaQhaffH2hRkcv7PPAzfzSSaki3xZaYtMFPlTKXSY61shlQmVtlkI?=
 =?us-ascii?Q?Jx39dEKsRDCOBLnVWytX0wFIR7OTt56nJHsia8fImCtS25T2dOkkUDkkPS2w?=
 =?us-ascii?Q?o1x8YHHaCruqmVZQB2VjLkxIhEnLiMzHxkzfjkfZy8a/j8NWqHBRpIUCetTn?=
 =?us-ascii?Q?sbvI1lpG2cXRhkO+q8OvKBuLwRFk52xaY96aKdoZFKlooi5inCaF1gg7WOfo?=
 =?us-ascii?Q?URgGvE3NKL4mE/CgIuQ7Q7qrYQdOMi0xKnJJpLC8oMJUTURVBkpB7bVlR+h+?=
 =?us-ascii?Q?1ley2Q=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14dc5316-f108-45d3-8f67-08db31fc2f72
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2023 15:25:40.2836 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MQ4g2Qc6CkmbB04jbqlY1oDDpbie+FrUET1mKTTDk93PVH5+VPuyiX2BL4UONze52q3jOjja0M74TnPV+Cgt2xJLy6cD61SeY2LlA9whnoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR13MB5426
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LnOO/UwKSlta+Isnjh6QveYWddgG9PYLqV2STr6pWF4=;
 b=dsgVh70m1L9F4+YXX1Fadig+ukwXOLPipjTIbSes4ymJNuvq+5/1Frp7BBVTTBwXJ/OO+Mni+NG/hwKPP2nVxYp4M+cG1THdjDs+RKKfxDcHM17/Ca4L59VGzWs/3esVbUtQQ43hKBc3ZB+v+5LqURTjAoGPeIWr5j69+jyj6sU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=dsgVh70m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 29, 2023 at 07:03:50AM -0700, Pavan Kumar Linga wrote:
> Virtchnl version 1 is an interface used by the current generation of
> foundational NICs to negotiate the capabilities and configure the
> HW resources such as queues, vectors, RSS LUT, etc between the PF
> and VF drivers. It is not extensible to enable new features supported
> in the next generation of NICs/IPUs and to negotiate descriptor types,
> packet types and register offsets.
> 
> To overcome the limitations of the existing interface, introduce
> the virtchnl version 2 and add the necessary opcodes, structures,
> definitions, and descriptor formats. The driver also learns the
> data queue and other register offsets to use instead of hardcoding
> them. The advantage of this approach is that it gives the flexibility
> to modify the register offsets if needed, restrict the use of
> certain descriptor types and negotiate the supported packet types.
> 
> Following are the links to the specifications for reference
> 
> Virtchnl version1:
> https://www.intel.com/content/dam/www/public/us/en/documents/
> product-specifications/ethernet-adaptive-virtual-function-hardware-spec.pdf
> 
> Virtchnl version2:
> https://www.oasis-open.org/committees/documents.php?wg_abbrev=idpf
> 
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>

I guess this patchset has a while to run in review.
Some initial nits from my side, in case they are of any use to you.

...

> +/* Transmit queue config info */
> +struct virtchnl2_txq_info {
> +	__le64 dma_ring_addr;
> +
> +	/* See VIRTCHNL2_QUEUE_TYPE definitions */
> +	__le32 type;
> +
> +	__le32 queue_id;
> +	/* Valid only if queue model is split and type is trasmit queue. Used

nit: s/trasmit/transmit/

...

> +/* Receive Descriptors */
> +/* Splitq buf
> + * |                                       16|                   0|
> + * ----------------------------------------------------------------
> + * | RSV                                     | Buffer ID          |
> + * ----------------------------------------------------------------
> + * | Rx packet buffer adresss                                     |

nit: s/adresss/address

> + * ----------------------------------------------------------------
> + * | Rx header buffer adresss                                     |

ditto

> + * ----------------------------------------------------------------
> + * | RSV                                                          |
> + * ----------------------------------------------------------------
> + * |                                                             0|
> + */
> +struct virtchnl2_splitq_rx_buf_desc {
> +	struct {
> +		/* Buffer Identifier */
> +		__le16  buf_id;
> +		__le16  rsvd0;
> +		__le32  rsvd1;
> +	} qword0;
> +
> +	/* Packet buffer address */

ditto

> +	__le64  pkt_addr;
> +	/* Header buffer address */

ditto

> +	__le64  hdr_addr;
> +	__le64  rsvd2;
> +}; /* RX buffer descriptor format */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
