Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B97527A64B8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 15:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77C22615EE;
	Tue, 19 Sep 2023 13:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77C22615EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695129679;
	bh=r6uUab6vMxoHcKP2odg3Sqhlxw7k0fCiitgkSKH3rmM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fHQIHuzk3Tm8ih+BBVmWfCgFUMq6iBgTJoZHB/NlRcfdmEBGhytOLSYW6iw8a0DbU
	 5vwxpXp4ZvpHxJLruajC6mtTxfAmemYAYdeUiFWMJsXIpJiJ1WpJPwAmBnAq3xg/K2
	 ixaRrteKQhWo3wEeNNi+7LKS+EL/7QgHTnogg/oSooezqF6Dm+Q0M1USAxjPedc/Zk
	 pYowiAfT4HZPYfRx2aM8ut7bRzOjNm67eo5j/rklB07mBZsPzOPKFCcivJkEYrTbRW
	 IQVVBKrFnBkj9nVTW+EgupBHKmXE+dMEzTOyS84sbaQAUMRVivi7MV0/jR7sjBN93K
	 2lVBstCIcI+vQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eyl1mlEpN2Ro; Tue, 19 Sep 2023 13:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B4DB60FA0;
	Tue, 19 Sep 2023 13:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B4DB60FA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58E031BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3EC8B400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:21:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3EC8B400B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e6p91utNM7Oy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 13:21:13 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 758474172D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:21:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 758474172D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 87F676146A;
 Tue, 19 Sep 2023 13:21:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3DC4C433C8;
 Tue, 19 Sep 2023 13:21:10 +0000 (UTC)
Date: Tue, 19 Sep 2023 15:21:08 +0200
From: Simon Horman <horms@kernel.org>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <ZQmgRH+xYSGTQP2X@kernel.org>
References: <20230915150958.592564-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230915150958.592564-1-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1695129671;
 bh=1Z0kW/DGgDpDPeGkUwDUCSqodWYaUCAUQITt2HN5PNM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ix0deOOgocKBKSIZeif/9sNAj75m9Q/04oE/DWCxUyC6ughDD9uLYgDnk/4cyD9et
 4/DKqTZKLyNImBDPp4PxdUDJqyJeBWOLwh9krhKLn8o48VDYsil1bl1bQtkknRX9yw
 YDbDvk4xR9qVztYIpkwQXuAqT6HxL+GmW6P5AykwRxrNIhJ+q0oBBFa8+/lXx9JZC1
 9ZKFNCNCWARFSeyOStybxcZ6Vyvqwf1yXDU/0B8hoUOugv/Y39d8z2QHaUVS9cV2Wm
 HyZoRpiA4757IGGKGoZum+AP3yEORdrMyM3eUvDe1gyGEZDEj+i9E10lqC8JbkVZgZ
 m1Sh/yw/b0Y6A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ix0deOOg
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/6] ice: Add basic E830
 support
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 15, 2023 at 05:09:52PM +0200, Pawel Chmielewski wrote:
> This is an initial patchset adding the basic support for E830. E830 is
> the 200G ethernet controller family that is a follow on to the E810 100G
> family. The series adds new devices IDs, a new MAC type, several registers
> and a support for new link speeds. As the new devices use another version
> of ice_aqc_get_link_status_data admin command, the driver should use
> different buffer length for this AQ command when loaded on E830.
> ---
> Resending the original series, but with two patches moved to another
> set [1], which the following series depends on.
> 
> [1] https://lore.kernel.org/netdev/20230915145522.586365-1-pawel.chmielewski@intel.com/


For series,

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
