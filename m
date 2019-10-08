Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4F2CF489
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 10:05:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08316873C9;
	Tue,  8 Oct 2019 08:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iI9WKU1CPQue; Tue,  8 Oct 2019 08:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B48E187668;
	Tue,  8 Oct 2019 08:05:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB1491BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B639D204FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLtHvcR11SX4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 08:05:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 3F357203FC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:05:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 01:05:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="199747125"
Received: from iannetti-mobl1.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.56.81])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Oct 2019 01:05:49 -0700
To: Sridhar Samudrala <sridhar.samudrala@intel.com>,
 magnus.karlsson@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-4-git-send-email-sridhar.samudrala@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <8a71dd88-43d0-e1fd-3a08-ecf431e36954@intel.com>
Date: Tue, 8 Oct 2019 10:05:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570515415-45593-4-git-send-email-sridhar.samudrala@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 3/4] libbpf: handle AF_XDP
 sockets created with XDP_DIRECT bind flag.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-10-08 08:16, Sridhar Samudrala wrote:
> Don't allow an AF_XDP socket trying to bind with XDP_DIRECT bind
> flag when a normal XDP program is already attached to the device,
> 
> Don't attach the default XDP program when AF_XDP socket is created
> with XDP_DIRECT bind flag.
>

I'd like this to be default for xsk.c, and if not supported fall back to 
old code.


> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
>   tools/lib/bpf/xsk.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/tools/lib/bpf/xsk.c b/tools/lib/bpf/xsk.c
> index d5f4900e5c54..953b479040cd 100644
> --- a/tools/lib/bpf/xsk.c
> +++ b/tools/lib/bpf/xsk.c
> @@ -454,6 +454,9 @@ static int xsk_setup_xdp_prog(struct xsk_socket *xsk)
>   		return err;
>   
>   	if (!prog_id) {
> +		if (xsk->config.bind_flags & XDP_DIRECT)
> +			return 0;
> +
>   		err = xsk_create_bpf_maps(xsk);
>   		if (err)
>   			return err;
> @@ -464,6 +467,9 @@ static int xsk_setup_xdp_prog(struct xsk_socket *xsk)
>   			return err;
>   		}
>   	} else {
> +		if (xsk->config.bind_flags & XDP_DIRECT)
> +			return -EEXIST;
> +
>   		xsk->prog_fd = bpf_prog_get_fd_by_id(prog_id);
>   		err = xsk_lookup_bpf_maps(xsk);
>   		if (err) {
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
